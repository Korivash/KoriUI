--============================================================--
-- KoriUI Initialization
--============================================================--

-- Keybinding display name (must be global before Bindings.xml loads)
BINDING_NAME_KORIUI_TOGGLE_OPTIONS = "Open KoriUI Options"

---@type table|AceAddon
KoriUI = LibStub("AceAddon-3.0"):NewAddon("KoriUI", "AceConsole-3.0", "AceEvent-3.0")

---@type table<string, string>
KoriUI.L = LibStub("AceLocale-3.0"):GetLocale("KoriUI")

local L = KoriUI.L
KoriUI.DF = rawget(_G, "DetailsFramework")
KoriUI.DEBUG_MODE = false

--============================================================--
-- Version & Defaults
--============================================================--

KoriUI.versionString = C_AddOns.GetAddOnMetadata("KoriUI", "Version") or "3.0.7"

---@type table
KoriUI.defaults = {
    global = {},
    char = {
        ---@type table
        debug = {
            reload = false
        }
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
    self:CheckMediaRegistration()
end

--============================================================--
-- Slash Commands
--============================================================--

function KoriUI:SlashCommandOpen(input)
    if input and input == "debug" then
        self.db.char.debug.reload = true
        KoriUI:SafeReload()
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
        print("|cFF56D1FFKoriUI:|r GUI not loaded yet. Try again in a moment.")
    end
end

function KoriUI:SlashCommandReload()
    KoriUI:SafeReload()
end

--============================================================--
-- Keybind Shortcuts
--============================================================--

-- Quick Keybind Mode (/kb)
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

-- Cooldown Manager Shortcut (/cdm)
SLASH_KORIUI_CDM1 = "/cdm"
SlashCmdList["KORIUI_CDM"] = function()
    if CooldownViewerSettings then
        CooldownViewerSettings:SetShown(not CooldownViewerSettings:IsShown())
    else
        print("|cff4A9EFFKoriUI:|r Cooldown Settings not available. Enable CDM first.")
    end
end

--============================================================--
-- OnEnable Lifecycle
--============================================================--

function KoriUI:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD")

    -- Initialize KORICore if present
    if self.KORICore then
        if self.db.profile and self.db.profile.chat and self.db.profile.chat.showIntroMessage ~= false then
            print("|cFF1E90FFKoriUI Command Deck|r loaded. |cFFFFFF00/kori|r to configure.")
            print("|cFF1E90FFKORI UI REMINDER:|r")
            print("|cFF4A9EFF1.|r ENABLE |cFFFFFF00Cooldown Manager|r in Options > Gameplay Enhancement")
            print("|cFF4A9EFF2.|r Action Bars & Menu Bar |cFFFFFF00HIDDEN|r on mouseover |cFFFFFF00by default|r. Use |cFFFFFF00'Actionbars'|r tab in |cFFFFFF00/kori|r to unhide.")
            print("|cFF4A9EFF3.|r Use |cFFFFFF00100% Icon Size|r on CDM Essential & Utility bars via |cFFFFFF00Edit Mode|r for best results.")
            print("|cFF4A9EFF4.|r Position your |cFFFFFF00CDM bars|r in |cFFFFFF00Edit Mode|r and click |cFFFFFF00Save|r before exiting.")
        end
    end
end

--============================================================--
-- Player World Entry
--============================================================--

function KoriUI:PLAYER_ENTERING_WORLD(_, isInitialLogin, isReloadingUi)
    self:BackwardsCompat()

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

    --============================================================--
    -- Add to Options Menu (NEW)
    --============================================================--
    -- In your options registration function:
    if select(2, UnitClass("player")) == "MONK" then
        if self.GetStaggerOptions then
            local options = self:GetOptionsTable()
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

