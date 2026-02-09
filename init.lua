-- Keybinding display name (must be global before Bindings.xml loads)
BINDING_NAME_KORIUI_TOGGLE_OPTIONS = "Open KoriUI Options"

---@type table|AceAddon
KoriUI = LibStub("AceAddon-3.0"):NewAddon("KoriUI", "AceConsole-3.0", "AceEvent-3.0")
---@type table<string, string>
KoriUI.L = LibStub("AceLocale-3.0"):GetLocale("KoriUI")

local L = KoriUI.L

---@type table
KoriUI.DF = _G["DetailsFramework"]
KoriUI.DEBUG_MODE = false

-- Version info
KoriUI.versionString = C_AddOns.GetAddOnMetadata("KoriUI", "Version") or "1.42"

---@type table
KoriUI.defaults = {
    global = {},
    char = {
        ---@type table
        debug = {
            ---@type boolean
            reload = false
        }
    }
}

function KoriUI:OnInitialize()
    ---@type AceDBObject-3.0
    self.db = LibStub("AceDB-3.0"):New("KoriUI_DB", self.defaults, "Default")

    self:RegisterChatCommand("kori", "SlashCommandOpen")
    self:RegisterChatCommand("koriui", "SlashCommandOpen")
    self:RegisterChatCommand("rl", "SlashCommandReload")
    
    -- Register our media files with LibSharedMedia
    self:CheckMediaRegistration()
end

-- Quick Keybind Mode shortcut (/kb)
SLASH_KORIKB1 = "/kb"
SlashCmdList["KORIKB"] = function()
    local LibKeyBound = LibStub("LibKeyBound-1.0", true)
    if LibKeyBound then
        LibKeyBound:Toggle()
    elseif QuickKeybindFrame then
        -- Fallback to Blizzard's Quick Keybind Mode (no mousewheel support)
        ShowUIPanel(QuickKeybindFrame)
    else
        print("|cff4A9EFFKoriUI:|r Quick Keybind Mode not available.")
    end
end

-- Cooldown Settings shortcut (/cdm)
SLASH_KORIUI_CDM1 = "/cdm"
SlashCmdList["KORIUI_CDM"] = function()
    if CooldownViewerSettings then
        CooldownViewerSettings:SetShown(not CooldownViewerSettings:IsShown())
    else
        print("|cff4A9EFFKoriUI:|r Cooldown Settings not available. Enable CDM first.")
    end
end

function KoriUI:SlashCommandOpen(input)
    if input and input == "debug" then
        self.db.char.debug.reload = true
        KoriUI:SafeReload()
    elseif input and input == "editmode" then
        -- Toggle Unit Frames Edit Mode
        if _G.KoriUI_ToggleUnitFrameEditMode then
            _G.KoriUI_ToggleUnitFrameEditMode()
        else
            print("|cFF56D1FFKoriUI:|r Unit Frames module not loaded.")
        end
        return
    end
    
    -- Default: Open custom GUI
    if self.GUI then
        self.GUI:Toggle()
    else
        print("|cFF56D1FFKoriUI:|r GUI not loaded yet. Try again in a moment.")
    end
end

function KoriUI:SlashCommandReload()
    KoriUI:SafeReload()
end

function KoriUI:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    
    -- Initialize KORICore (AceDB-based integration)
    if self.KORICore then
        -- Show intro message if enabled (defaults to true)
        if self.db.profile.chat.showIntroMessage ~= false then
            print("|cFF1E90FFKori UI|r loaded. |cFFFFFF00/kori|r to setup.")
            print("|cFF1E90FFKORI UI REMINDER:|r")
            print("|cFF4A9EFF1.|r ENABLE |cFFFFFF00Cooldown Manager|r in Options > Gameplay Enhancement")
            print("|cFF4A9EFF2.|r Action Bars & Menu Bar |cFFFFFF00HIDDEN|r on mouseover |cFFFFFF00by default|r. Go to |cFFFFFF00'Actionbars'|r tab in |cFFFFFF00/kori|r to unhide.")
            print("|cFF4A9EFF3.|r Use |cFFFFFF00100% Icon Size|r on CDM Essential & Utility bars via |cFFFFFF00Edit Mode|r for best results.")
            print("|cFF4A9EFF4.|r Position your |cFFFFFF00CDM bars|r in |cFFFFFF00Edit Mode|r and click |cFFFFFF00Save|r before exiting.")
        end
    end
end

function KoriUI:PLAYER_ENTERING_WORLD(_, isInitialLogin, isReloadingUi)
    KoriUI:BackwardsCompat()

    -- Ensure debug table exists
    if not self.db.char.debug then
        self.db.char.debug = { reload = false }
    end

    if not self.DEBUG_MODE then
        if self.db.char.debug.reload then
            self.DEBUG_MODE = true
            self.db.char.debug.reload = false
            self:DebugPrint("Debug Mode Enabled")
        end
    else
        self:DebugPrint("Debug Mode Enabled")
    end
end

function KoriUI:DebugPrint(...)
    if self.DEBUG_MODE then
        self:Print(...)
    end
end

-- ADDON COMPARTMENT FUNCTIONS --
function KoriUI_CompartmentClick()
    -- Open the new GUI
    if KoriUI.GUI then
        KoriUI.GUI:Toggle()
    end
end

local GameTooltip = GameTooltip
function KoriUI_CompartmentOnEnter(self, button)
    GameTooltip:ClearLines()
    GameTooltip:SetOwner(type(self) ~= "string" and self or button, "ANCHOR_LEFT")
    GameTooltip:AddLine(L["AddonName"] .. " v" .. KoriUI.versionString)
    GameTooltip:AddLine(L["LeftClickOpen"])
    GameTooltip:Show()
end

function KoriUI_CompartmentOnLeave()
    GameTooltip:Hide()
end
