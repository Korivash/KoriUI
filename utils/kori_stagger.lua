-- KoriUI Monk Stagger Bar
-- Tracks Brewmaster Stagger damage with color-coded percentage
-- Green (< 30%), Yellow (30-60%), Red (> 60%)

local _, KoriUI = ...
local L = KoriUI.L

-- Stagger Spell IDs
local STAGGER_LIGHT = 124275   -- Light Stagger (green)
local STAGGER_MODERATE = 124274 -- Moderate Stagger (yellow)  
local STAGGER_HEAVY = 124273   -- Heavy Stagger (red)

-- Default configuration
KoriUI.StaggerDefaults = {
    enabled = true,
    width = 200,
    height = 20,
    scale = 1,
    alpha = 1,
    showPercent = true,
    showText = true,
    fontSize = 12,
    fontOutline = "OUTLINE",
    texture = "KoriUI StatusBar",
    border = "KoriUI Border",
    position = {
        point = "CENTER",
        relativeTo = "UIParent",
        relativePoint = "CENTER",
        x = 0,
        y = -200
    },
    colors = {
        green = {r = 0.0, g = 1.0, b = 0.0},   -- < 30%
        yellow = {r = 1.0, g = 1.0, b = 0.0},  -- 30-60%
        red = {r = 1.0, g = 0.0, b = 0.0},     -- > 60%
        background = {r = 0.1, g = 0.1, b = 0.1, a = 0.8}
    },
    thresholds = {
        yellow = 30,  -- Percentage to turn yellow
        red = 60      -- Percentage to turn red
    }
}

-- Initialize Stagger Module
function KoriUI:InitStaggerBar()
    if self.db.profile.stagger == nil then
        self.db.profile.stagger = CopyTable(self.StaggerDefaults)
    else
        -- Merge with defaults for any missing values
        self.db.profile.stagger = self:MergeDefaults(self.db.profile.stagger, self.StaggerDefaults)
    end
    
    self:CreateStaggerBar()
    self:UpdateStaggerBarVisibility()
    
    -- Register events
    self:RegisterEvent("UNIT_AURA", "UpdateStagger")
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "UpdateStaggerBarVisibility")
    self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED", "UpdateStaggerBarVisibility")
    self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED", "UpdateStaggerBarVisibility")
end

-- Create the Stagger Bar frame
function KoriUI:CreateStaggerBar()
    local config = self.db.profile.stagger
    
    -- Main frame
    local frame = CreateFrame("Frame", "KoriUI_StaggerBar", UIParent)
    frame:SetSize(config.width, config.height)
    frame:SetScale(config.scale)
    frame:SetAlpha(config.alpha)
    frame:SetPoint(config.position.point, config.position.relativeTo, 
                   config.position.relativePoint, config.position.x, config.position.y)
    
    -- Make movable
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", function(self) 
        if IsShiftKeyDown() or KoriUI.db.profile.stagger.unlocked then
            self:StartMoving() 
        end
    end)
    frame:SetScript("OnDragStop", function(self) 
        self:StopMovingOrSizing()
        -- Save position
        local point, _, relativePoint, x, y = self:GetPoint()
        KoriUI.db.profile.stagger.position = {
            point = point,
            relativeTo = "UIParent",
            relativePoint = relativePoint,
            x = x,
            y = y
        }
    end)
    
    -- Background
    frame.bg = frame:CreateTexture(nil, "BACKGROUND")
    frame.bg:SetAllPoints()
    frame.bg:SetColorTexture(
        config.colors.background.r,
        config.colors.background.g,
        config.colors.background.b,
        config.colors.background.a
    )
    
    -- Status Bar
    frame.bar = CreateFrame("StatusBar", nil, frame)
    frame.bar:SetAllPoints()
    frame.bar:SetMinMaxValues(0, 100)
    frame.bar:SetValue(0)
    
    -- Set texture
    local texture = self.LSM:Fetch("statusbar", config.texture) or "Interface\\TargetingFrame\\UI-StatusBar"
    frame.bar:SetStatusBarTexture(texture)
    
    -- Border
    frame.border = CreateFrame("Frame", nil, frame, "BackdropTemplate")
    frame.border:SetAllPoints()
    frame.border:SetBackdrop({
        edgeFile = self.LSM:Fetch("border", config.border) or "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 12,
        insets = {left = 3, right = 3, top = 3, bottom = 3}
    })
    frame.border:SetBackdropBorderColor(0.3, 0.3, 0.3, 0.8)
    
    -- Percentage Text
    frame.text = frame.bar:CreateFontString(nil, "OVERLAY")
    frame.text:SetFont(self.LSM:Fetch("font", "KoriUI Font") or "Fonts\\FRIZQT__.ttf", 
                       config.fontSize, config.fontOutline)
    frame.text:SetPoint("CENTER", 0, 0)
    frame.text:SetShadowOffset(1, -1)
    frame.text:SetShadowColor(0, 0, 0, 1)
    
    -- Label (optional)
    frame.label = frame.bar:CreateFontString(nil, "OVERLAY")
    frame.label:SetFont(self.LSM:Fetch("font", "KoriUI Font") or "Fonts\\FRIZQT__.ttf", 
                        config.fontSize - 2, config.fontOutline)
    frame.label:SetPoint("BOTTOM", frame, "TOP", 0, 2)
    frame.label:SetText("STAGGER")
    frame.label:Hide()
    
    -- Tooltip
    frame:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:AddLine("Stagger", 1, 1, 1)
        GameTooltip:AddLine("Damage delayed by Stagger", 0.8, 0.8, 0.8)
        GameTooltip:AddLine("Left-click + drag to move (when unlocked)", 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
    
    -- Store reference
    self.StaggerFrame = frame
    
    -- Initial update
    self:UpdateStagger()
end

-- Update Stagger Bar visibility (only show for Brewmaster)
function KoriUI:UpdateStaggerBarVisibility()
    local spec = GetSpecialization()
    local isBrewmaster = (spec == 1) -- Brewmaster is spec 1 for Monks
    
    if self.StaggerFrame then
        if self.db.profile.stagger.enabled and isBrewmaster then
            self.StaggerFrame:Show()
        else
            self.StaggerFrame:Hide()
        end
    end
end

-- Update Stagger data
function KoriUI:UpdateStagger()
    if not self.StaggerFrame or not self.StaggerFrame:IsShown() then return end
    
    local config = self.db.profile.stagger
    local frame = self.StaggerFrame
    
    -- Get stagger info using C_UnitAuras (Modern API)
    local staggerAura = C_UnitAuras.GetPlayerAuraBySpellID(STAGGER_LIGHT) or
                        C_UnitAuras.GetPlayerAuraBySpellID(STAGGER_MODERATE) or
                        C_UnitAuras.GetPlayerAuraBySpellID(STAGGER_HEAVY)
    
    local currentStagger = 0
    local maxStagger = UnitHealthMax("player") * 10 -- Stagger caps at 1000% health (practically infinite)
    local percent = 0
    
    if staggerAura then
        -- Parse tooltip for stagger amount (more reliable than aura values)
        local tooltipData = C_TooltipInfo.GetUnitBuff("player", staggerAura.slot, "HELPFUL")
        if tooltipData and tooltipData.lines then
            for _, line in ipairs(tooltipData.lines) do
                if line.leftText then
                    -- Look for damage number in tooltip
                    local damage = line.leftText:match("(%d+[,%.]?%d*)%s*stagger damage")
                    if damage then
                        currentStagger = tonumber(damage:gsub(",", "")) or 0
                        break
                    end
                end
            end
        end
        
        -- Fallback: use aura amount if tooltip parsing fails
        if currentStagger == 0 and staggerAura.points then
            currentStagger = staggerAura.points[1] or 0
        end
    end
    
    -- Calculate percentage of max health
    local maxHealth = UnitHealthMax("player")
    percent = (currentStagger / maxHealth) * 100
    
    -- Cap at 100% for display purposes
    local displayPercent = math.min(percent, 100)
    
    -- Update bar value
    frame.bar:SetValue(displayPercent)
    
    -- Determine color based on percentage
    local color = config.colors.green
    local statusText = "GREEN"
    
    if percent >= config.thresholds.red then
        color = config.colors.red
        statusText = "RED"
        -- Pulse effect for heavy stagger
        if not frame.pulse then
            frame.pulse = frame:CreateAnimationGroup()
            local alpha = frame.pulse:CreateAnimation("Alpha")
            alpha:SetFromAlpha(1)
            alpha:SetToAlpha(0.5)
            alpha:SetDuration(0.5)
            alpha:SetSmoothing("IN_OUT")
            frame.pulse:SetLooping("BOUNCE")
        end
        if not frame.pulse:IsPlaying() then
            frame.pulse:Play()
        end
    elseif percent >= config.thresholds.yellow then
        color = config.colors.yellow
        statusText = "YELLOW"
        if frame.pulse and frame.pulse:IsPlaying() then
            frame.pulse:Stop()
            frame:SetAlpha(config.alpha)
        end
    else
        if frame.pulse and frame.pulse:IsPlaying() then
            frame.pulse:Stop()
            frame:SetAlpha(config.alpha)
        end
    end
    
    -- Apply color
    frame.bar:SetStatusBarColor(color.r, color.g, color.b)
    
    -- Update text
    if config.showPercent then
        frame.text:SetText(string.format("%.1f%%", percent))
        frame.text:SetTextColor(color.r, color.g, color.b)
    else
        frame.text:SetText("")
    end
    
    -- Store current values for reference
    frame.currentStagger = currentStagger
    frame.staggerPercent = percent
    frame.staggerStatus = statusText
end

-- Configuration UI integration
function KoriUI:GetStaggerOptions()
    return {
        name = "Stagger Bar",
        type = "group",
        order = 100,
        args = {
            enabled = {
                name = "Enable Stagger Bar",
                desc = "Show the Brewmaster Stagger tracking bar",
                type = "toggle",
                order = 1,
                get = function() return self.db.profile.stagger.enabled end,
                set = function(_, val) 
                    self.db.profile.stagger.enabled = val
                    self:UpdateStaggerBarVisibility()
                end
            },
            unlock = {
                name = "Unlock Position",
                desc = "Allow dragging the bar with left-click",
                type = "toggle",
                order = 2,
                get = function() return self.db.profile.stagger.unlocked end,
                set = function(_, val) 
                    self.db.profile.stagger.unlocked = val
                    if val then
                        self:Print("Stagger Bar unlocked - you can now drag it")
                    else
                        self:Print("Stagger Bar locked")
                    end
                end
            },
            appearance = {
                name = "Appearance",
                type = "group",
                inline = true,
                order = 10,
                args = {
                    width = {
                        name = "Width",
                        type = "range",
                        min = 50,
                        max = 400,
                        step = 1,
                        order = 1,
                        get = function() return self.db.profile.stagger.width end,
                        set = function(_, val)
                            self.db.profile.stagger.width = val
                            self.StaggerFrame:SetWidth(val)
                        end
                    },
                    height = {
                        name = "Height",
                        type = "range",
                        min = 10,
                        max = 50,
                        step = 1,
                        order = 2,
                        get = function() return self.db.profile.stagger.height end,
                        set = function(_, val)
                            self.db.profile.stagger.height = val
                            self.StaggerFrame:SetHeight(val)
                        end
                    },
                    scale = {
                        name = "Scale",
                        type = "range",
                        min = 0.5,
                        max = 2,
                        step = 0.1,
                        order = 3,
                        get = function() return self.db.profile.stagger.scale end,
                        set = function(_, val)
                            self.db.profile.stagger.scale = val
                            self.StaggerFrame:SetScale(val)
                        end
                    },
                    alpha = {
                        name = "Alpha",
                        type = "range",
                        min = 0,
                        max = 1,
                        step = 0.05,
                        order = 4,
                        get = function() return self.db.profile.stagger.alpha end,
                        set = function(_, val)
                            self.db.profile.stagger.alpha = val
                            self.StaggerFrame:SetAlpha(val)
                        end
                    }
                }
            },
            text = {
                name = "Text Options",
                type = "group",
                inline = true,
                order = 20,
                args = {
                    showPercent = {
                        name = "Show Percentage",
                        desc = "Display stagger percentage on the bar",
                        type = "toggle",
                        order = 1,
                        get = function() return self.db.profile.stagger.showPercent end,
                        set = function(_, val)
                            self.db.profile.stagger.showPercent = val
                            self:UpdateStagger()
                        end
                    },
                    fontSize = {
                        name = "Font Size",
                        type = "range",
                        min = 8,
                        max = 24,
                        step = 1,
                        order = 2,
                        get = function() return self.db.profile.stagger.fontSize end,
                        set = function(_, val)
                            self.db.profile.stagger.fontSize = val
                            local font = self.LSM:Fetch("font", "KoriUI Font") or "Fonts\\FRIZQT__.ttf"
                            self.StaggerFrame.text:SetFont(font, val, self.db.profile.stagger.fontOutline)
                        end
                    }
                }
            },
            colors = {
                name = "Color Thresholds",
                type = "group",
                inline = true,
                order = 30,
                args = {
                    greenDesc = {
                        name = "Green: < 30%",
                        type = "description",
                        order = 1,
                        width = "full"
                    },
                    yellowThreshold = {
                        name = "Yellow Threshold %",
                        desc = "Percentage where bar turns yellow",
                        type = "range",
                        min = 10,
                        max = 50,
                        step = 5,
                        order = 2,
                        get = function() return self.db.profile.stagger.thresholds.yellow end,
                        set = function(_, val)
                            self.db.profile.stagger.thresholds.yellow = val
                            self:UpdateStagger()
                        end
                    },
                    redThreshold = {
                        name = "Red Threshold %",
                        desc = "Percentage where bar turns red",
                        type = "range",
                        min = 40,
                        max = 80,
                        step = 5,
                        order = 3,
                        get = function() return self.db.profile.stagger.thresholds.red end,
                        set = function(_, val)
                            self.db.profile.stagger.thresholds.red = val
                            self:UpdateStagger()
                        end
                    },
                    colorGreen = {
                        name = "Green Color",
                        type = "color",
                        order = 4,
                        get = function()
                            local c = self.db.profile.stagger.colors.green
                            return c.r, c.g, c.b
                        end,
                        set = function(_, r, g, b)
                            self.db.profile.stagger.colors.green = {r = r, g = g, b = b}
                            self:UpdateStagger()
                        end
                    },
                    colorYellow = {
                        name = "Yellow Color",
                        type = "color",
                        order = 5,
                        get = function()
                            local c = self.db.profile.stagger.colors.yellow
                            return c.r, c.g, c.b
                        end,
                        set = function(_, r, g, b)
                            self.db.profile.stagger.colors.yellow = {r = r, g = g, b = b}
                            self:UpdateStagger()
                        end
                    },
                    colorRed = {
                        name = "Red Color",
                        type = "color",
                        order = 6,
                        get = function()
                            local c = self.db.profile.stagger.colors.red
                            return c.r, c.g, c.b
                        end,
                        set = function(_, r, g, b)
                            self.db.profile.stagger.colors.red = {r = r, g = g, b = b}
                            self:UpdateStagger()
                        end
                    }
                }
            },
            reset = {
                name = "Reset to Defaults",
                type = "execute",
                order = 100,
                func = function()
                    self.db.profile.stagger = CopyTable(self.StaggerDefaults)
                    self:CreateStaggerBar()
                    self:UpdateStaggerBarVisibility()
                    self:Print("Stagger Bar settings reset")
                end
            }
        }
    }
end

-- Slash command for quick toggle
SLASH_KORISTAGGER1 = "/stagger"
SlashCmdList["KORISTAGGER"] = function(msg)
    if msg == "unlock" then
        KoriUI.db.profile.stagger.unlocked = not KoriUI.db.profile.stagger.unlocked
        KoriUI:Print("Stagger Bar " .. (KoriUI.db.profile.stagger.unlocked and "unlocked" or "locked"))
    elseif msg == "reset" then
        KoriUI.db.profile.stagger = CopyTable(KoriUI.StaggerDefaults)
        KoriUI:CreateStaggerBar()
        KoriUI:UpdateStaggerBarVisibility()
        KoriUI:Print("Stagger Bar reset")
    else
        KoriUI:Print("Stagger commands: unlock, reset")
    end
end