-- KoriUI Media Registration
-- This file handles the registration of fonts and textures with LibSharedMedia

local LSM = LibStub("LibSharedMedia-3.0")

-- Media types from LibSharedMedia
local MediaType = LSM.MediaType
local FONT = MediaType.FONT
local STATUSBAR = MediaType.STATUSBAR
local BACKGROUND = MediaType.BACKGROUND
local BORDER = MediaType.BORDER

-- Register media synchronously (LSM:Register is lightweight - just table entries)
-- Register the Korivash font (used as the main UI font)
    local koriFontPath = "Interface\\AddOns\\KoriUI\\assets\\Korivash.ttf"
    LSM:Register(FONT, "Korivash", koriFontPath)

    -- Register Poppins fonts
    LSM:Register(FONT, "Poppins Black", "Interface\\AddOns\\KoriUI\\assets\\Poppins-Black.ttf")
    LSM:Register(FONT, "Poppins Bold", "Interface\\AddOns\\KoriUI\\assets\\Poppins-Bold.ttf")
    LSM:Register(FONT, "Poppins Medium", "Interface\\AddOns\\KoriUI\\assets\\Poppins-Medium.ttf")
    LSM:Register(FONT, "Poppins SemiBold", "Interface\\AddOns\\KoriUI\\assets\\Poppins-SemiBold.ttf")

    -- Register Expressway font
    LSM:Register(FONT, "Expressway", "Interface\\AddOns\\KoriUI\\assets\\Expressway.TTF")

    -- Register the Korivash Logo texture
    local logoTexturePath = "Interface\\AddOns\\KoriUI\\assets\\koriLogo.tga"
    LSM:Register(BACKGROUND, "KorivashLogo", logoTexturePath)

    -- Register the Korivash texture
    local koriTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash.tga"
    LSM:Register(BACKGROUND, "Korivash", koriTexturePath)
    LSM:Register(STATUSBAR, "Korivash", koriTexturePath)
    LSM:Register(BORDER, "Korivash", koriTexturePath)

    -- Register the Korivash Reverse texture
    local koriReverseTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_reverse.tga"
    LSM:Register(BACKGROUND, "Korivash Reverse", koriReverseTexturePath)
    LSM:Register(STATUSBAR, "Korivash Reverse", koriReverseTexturePath)
    LSM:Register(BORDER, "Korivash Reverse", koriReverseTexturePath)

    -- Register Square texture
    local squareTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Square.tga"
    LSM:Register(BACKGROUND, "Square", squareTexturePath)
    LSM:Register(STATUSBAR, "Square", squareTexturePath)
    LSM:Register(BORDER, "Square", squareTexturePath)

    -- Register Korivash v2 texture
    local koriV2TexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v2.tga"
    LSM:Register(BACKGROUND, "Korivash v2", koriV2TexturePath)
    LSM:Register(STATUSBAR, "Korivash v2", koriV2TexturePath)
    LSM:Register(BORDER, "Korivash v2", koriV2TexturePath)

    -- Register Korivash v2 Reverse texture
    local koriV2ReverseTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v2reverse.tga"
    LSM:Register(BACKGROUND, "Korivash v2 Reverse", koriV2ReverseTexturePath)
    LSM:Register(STATUSBAR, "Korivash v2 Reverse", koriV2ReverseTexturePath)
    LSM:Register(BORDER, "Korivash v2 Reverse", koriV2ReverseTexturePath)

    -- Register Korivash v3 texture
    local koriV3TexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v3.tga"
    LSM:Register(BACKGROUND, "Korivash v3", koriV3TexturePath)
    LSM:Register(STATUSBAR, "Korivash v3", koriV3TexturePath)
    LSM:Register(BORDER, "Korivash v3", koriV3TexturePath)

    -- Register Korivash v3 Inverse texture
    local koriV3InverseTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v3inverse.tga"
    LSM:Register(BACKGROUND, "Korivash v3 Inverse", koriV3InverseTexturePath)
    LSM:Register(STATUSBAR, "Korivash v3 Inverse", koriV3InverseTexturePath)
    LSM:Register(BORDER, "Korivash v3 Inverse", koriV3InverseTexturePath)

    -- Register Korivash v4 texture
    local koriV4TexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v4.tga"
    LSM:Register(BACKGROUND, "Korivash v4", koriV4TexturePath)
    LSM:Register(STATUSBAR, "Korivash v4", koriV4TexturePath)
    LSM:Register(BORDER, "Korivash v4", koriV4TexturePath)

    -- Register Korivash v4 Inverse texture
    local koriV4InverseTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v4inverse.tga"
    LSM:Register(BACKGROUND, "Korivash v4 Inverse", koriV4InverseTexturePath)
    LSM:Register(STATUSBAR, "Korivash v4 Inverse", koriV4InverseTexturePath)
    LSM:Register(BORDER, "Korivash v4 Inverse", koriV4InverseTexturePath)

    -- Register Korivash v5 texture
    local koriV5TexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v5.tga"
    LSM:Register(BACKGROUND, "Korivash v5", koriV5TexturePath)
    LSM:Register(STATUSBAR, "Korivash v5", koriV5TexturePath)
    LSM:Register(BORDER, "Korivash v5", koriV5TexturePath)

    -- Register Korivash v5 Inverse texture
    local koriV5InverseTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v5_inverse.tga"
    LSM:Register(BACKGROUND, "Korivash v5 Inverse", koriV5InverseTexturePath)
    LSM:Register(STATUSBAR, "Korivash v5 Inverse", koriV5InverseTexturePath)
    LSM:Register(BORDER, "Korivash v5 Inverse", koriV5InverseTexturePath)

    -- Register Korivash v6 texture
    local koriV6TexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v6.tga"
    LSM:Register(BACKGROUND, "Korivash v6", koriV6TexturePath)
    LSM:Register(STATUSBAR, "Korivash v6", koriV6TexturePath)
    LSM:Register(BORDER, "Korivash v6", koriV6TexturePath)

    -- Register Korivash v6 Inverse texture
    local koriV6InverseTexturePath = "Interface\\AddOns\\KoriUI\\assets\\Korivash_v6inverse.tga"
    LSM:Register(BACKGROUND, "Korivash v6 Inverse", koriV6InverseTexturePath)
    LSM:Register(STATUSBAR, "Korivash v6 Inverse", koriV6InverseTexturePath)
    LSM:Register(BORDER, "Korivash v6 Inverse", koriV6InverseTexturePath)

    -- Register QUI Stripes texture (for absorb shield overlays)
    local absorbStripeTexturePath = "Interface\\AddOns\\KoriUI\\assets\\absorb_stripe"
    LSM:Register(STATUSBAR, "QUI Stripes", absorbStripeTexturePath)

-- Function to check if our media is registered
function KoriUI:CheckMediaRegistration()
    local koriFontRegistered = LSM:IsValid(FONT, "Korivash")
    local logoTextureRegistered = LSM:IsValid(BACKGROUND, "KorivashLogo")
    local koriTextureRegistered = LSM:IsValid(BACKGROUND, "Korivash")
    local koriReverseTextureRegistered = LSM:IsValid(BACKGROUND, "Korivash Reverse")
    
    -- Silent check - only print if there's a failure
    if not (koriFontRegistered and logoTextureRegistered and koriTextureRegistered and koriReverseTextureRegistered) then
        KoriUI:Print("Media registration failed:")
        if not koriFontRegistered then KoriUI:Print("- Korivash font not registered") end
        if not logoTextureRegistered then KoriUI:Print("- KorivashLogo texture not registered") end
        if not koriTextureRegistered then KoriUI:Print("- Korivash texture not registered") end
        if not koriReverseTextureRegistered then KoriUI:Print("- Korivash Reverse texture not registered") end
    end
end

-- Register any additional fonts or textures here
-- Example:
-- LSM:Register(FONT, "MyCustomFont", "Interface\\AddOns\\KoriUI\\assets\\mycustomfont.ttf")
-- LSM:Register(STATUSBAR, "MyCustomTexture", "Interface\\AddOns\\KoriUI\\assets\\mycustomtexture.tga") 