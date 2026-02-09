---------------------------------------------------------------------------
-- KoriUI Blizzard Options Integration
-- Registers KoriUI in Settings > AddOns panel
---------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local KORI = KoriUI

local ADDON_DISPLAY_NAME = "Kori UI"

local function OpenKoriUI()
    if KORI.GUI then
        KORI.GUI:Toggle()
        return true
    end
    print("|cFF56D1FFKoriUI:|r GUI not loaded yet. Try /kori instead.")
    return false
end

local function CreateSettingsPanel()
    -- Check API availability (TWW/Midnight)
    if not (Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory) then
        return
    end

    local panel = CreateFrame("Frame", "KoriUI_BlizzardSettingsPanel")
    panel.name = ADDON_DISPLAY_NAME

    -- Title
    local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(ADDON_DISPLAY_NAME)

    -- Description
    local desc = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    desc:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    desc:SetWidth(520)
    desc:SetJustifyH("LEFT")
    desc:SetText("Open the Kori UI configuration window.")

    -- Button (using Blizzard template for consistency in Blizzard's UI)
    local btn = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    btn:SetSize(180, 32)
    btn:SetPoint("TOPLEFT", desc, "BOTTOMLEFT", 0, -16)
    btn:SetText("Open Kori UI")
    btn:SetScript("OnClick", OpenKoriUI)

    -- Register with Blizzard Settings
    local category = Settings.RegisterCanvasLayoutCategory(panel, ADDON_DISPLAY_NAME)
    Settings.RegisterAddOnCategory(category)
end

-- Create panel after a short delay to ensure all systems are ready
C_Timer.After(0.1, CreateSettingsPanel)
