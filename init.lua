--============================================================--
-- KoriUI Initialization (Patch 12.0.1 Final Stable)
--============================================================--
local ADDON_NAME, ns = ... -- MUST STAY AT LINE 4 TO AVOID VARARG ERROR

-- DEBUG: Catch forbidden table errors to prevent addon load failure
local origErrorHandler = geterrorhandler()
seterrorhandler(function(err)
    if err and err:find("forbidden table") then
        if KoriUI and KoriUI.DEBUG_MODE then
            print("|cFFFF0000[KoriUI DEBUG] Forbidden table access prevented.|r")
        end
        return 
    end
    if origErrorHandler then return origErrorHandler(err) end
end)

-- Keybinding display name (must be global before Bindings.xml loads)
BINDING_NAME_KORIUI_TOGGLE_OPTIONS = "Open KoriUI Options"

---@type table|AceAddon
KoriUI = LibStub("AceAddon-3.0"):NewAddon("KoriUI", "AceConsole-3.0", "AceEvent-3.0")

---@type table<string, string>
KoriUI.L = LibStub("AceLocale-3.0"):GetLocale("KoriUI")

local L = KoriUI.L
KoriUI.DF = _G["DetailsFramework"]
KoriUI.DEBUG_MODE = false
KoriUI.versionString = C_AddOns.GetAddOnMetadata("KoriUI", "Version") or "2.1.3"

---@type table
KoriUI.defaults = {
    global = {},
    char = {
        debug = { reload = false }
    }
}

--============================================================--
-- Initialization
--============================================================--

function KoriUI:OnInitialize()
    ---@type AceDBObject-3.0
    self.db = LibStub("AceDB-3.0"):New("KoriUI_DB", self.defaults, "Default")

    -- Slash Commands
    self:RegisterChatCommand("kori", "SlashCommandOpen")
    self:RegisterChatCommand("koriui", "SlashCommandOpen")
    self:RegisterChatCommand("rl", "SlashCommandReload")

    -- Media registration
    if self.CheckMediaRegistration then
        self:CheckMediaRegistration()
    end
end

--============================================================--
-- Slash Commands
--============================================================--

function KoriUI:SlashCommandOpen(input)
    if input and input == "debug" then
        self.db.char.debug.reload = true
        self:SlashCommandReload()
        return
    elseif input and input == "editmode" then
        if _G.KoriUI_ToggleUnitFrameEditMode then
            _G.KoriUI_ToggleUnitFrameEditMode()
        else
            print("|cFF56D1FFKoriUI:|r Unit Frames module not loaded.")
        end
        return
    end

    -- Default: Open GUI
    if self.GUI then
        self.GUI:Toggle()
    else
        print("|cFF56D1FFKoriUI:|r GUI not loaded yet.")
    end
end

function KoriUI:SlashCommandReload()
    ReloadUI()
end

--============================================================--
-- Keybind Shortcuts
--============================================================--

SLASH_KORIKB1 = "/kb"
SlashCmdList["KORIKB"] = function()
    local LibKeyBound = LibStub("LibKeyBound-1.0", true)
    if LibKeyBound then
        LibKeyBound:Toggle()
    elseif QuickKeybindFrame then
        ShowUIPanel(QuickKeybindFrame)
    else
        print("|cff4A9EFFKoriUI:|r Quick Keybind Mode not available.")
    end
end

SLASH_KORIUI_CDM1 = "/cdm"
SlashCmdList["KORIUI_CDM"] = function()
    if CooldownViewerSettings then
        CooldownViewerSettings:SetShown(not CooldownViewerSettings:IsShown())
    else
        print("|cff4A9EFFKoriUI:|r Cooldown Settings not available.")
    end
end

--============================================================--
-- OnEnable Lifecycle & 12.0.1 Frame Management
--============================================================--

function KoriUI:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD")

    -- Restore Intro Messages
    if self.db.profile and self.db.profile.chat and self.db.profile.chat.showIntroMessage ~= false then
        print("|cFF1E90FFKori UI|r loaded. |cFFFFFF00/kori|r to setup.")
        print("|cFF1E90FFKORI UI REMINDER:|r")
        print("|cFF4A9EFF1.|r ENABLE |cFFFFFF00Cooldown Manager|r in Options > Gameplay Enhancement")
        print("|cFF4A9EFF2.|r Action Bars & Menu Bar |cFFFFFF00HIDDEN|r on mouseover |cFFFFFF00by default|r.")
    end

    -- 12.0.1 PROTECTED FRAME HIDER & MODULE REFRESH
    C_Timer.After(0.2, function()
        local hider = CreateFrame("Frame")
        hider:Hide()

        local blizzFrames = {
            "PlayerFrame", 
            "TargetFrame", 
            "FocusFrame", 
            "ComboPointPlayerFrame"
        }

        for _, name in ipairs(blizzFrames) do
            local frame = _G[name]
            if frame then
                frame:UnregisterAllEvents()
                pcall(function()
                    frame:SetParent(hider)
                end)
            end
        end
        
        -- WAKE UP KORI UNIT FRAMES (Using ns captured at top)
        local UF = ns and ns.KORI_UnitFrames
        if UF then
            if UF.RefreshAllFrames then
                UF:RefreshAllFrames()
            elseif UF.Refresh then
                UF:Refresh()
            end
        end

        -- Wake up Loot module
        if self.Loot and self.Loot.Initialize then 
            self.Loot:Initialize() 
        end
    end)
end

--============================================================--
-- Player World Entry
--============================================================--

function KoriUI:PLAYER_ENTERING_WORLD(_, isInitialLogin, isReloadingUi)
    if self.BackwardsCompat then self:BackwardsCompat() end

    if not self.db.char.debug then
        self.db.char.debug = { reload = false }
    end

    if self.db.char.debug.reload then
        self.DEBUG_MODE = true
        self.db.char.debug.reload = false
    end

    -- Fixed Monk Stagger Logic
    if select(2, UnitClass("player")) == "MONK" then
        if self.GetStaggerOptions then
            local options
            if self.GetOptionsTable then
                options = self:GetOptionsTable()
            end
            if options and options.args then
                options.args.stagger = self:GetStaggerOptions()
            end
        end
    end
end

--============================================================--
-- Debug & Helper Functions
--============================================================--

function KoriUI:DebugPrint(...)
    if self.DEBUG_MODE then
        self:Print(...)
    end
end

--============================================================--
-- Addon Compartment Functions
--============================================================--

function KoriUI_CompartmentClick()
    if KoriUI.GUI then KoriUI.GUI:Toggle() end
end

function KoriUI_CompartmentOnEnter(self, button)
    if not GameTooltip then return end
    GameTooltip:ClearLines()
    GameTooltip:SetOwner(type(self) ~= "string" and self or button, "ANCHOR_LEFT")
    GameTooltip:AddLine(L["AddonName"] .. " v" .. KoriUI.versionString)
    GameTooltip:AddLine(L["LeftClickOpen"])
    GameTooltip:Show()
end

function KoriUI_CompartmentOnLeave()
    if GameTooltip then GameTooltip:Hide() end
end

