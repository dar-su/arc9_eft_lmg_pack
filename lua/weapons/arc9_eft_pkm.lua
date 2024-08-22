AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_lmg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_pkm") or "PKM"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_lmg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Degtyaryov Plant",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "7.62x54mmR",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_ussr"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1994"
}

SWEP.Description = [[PKM (Pulemyot Kalashnikova Modernizirovanny - "Kalashnikov's Machine Gun Modernized") is a modernized version of Kalashnikov PK machine gun, operating with 7.62x54R ammunition. The PKM proved to be a powerful, simple, reliable and effective weapon. It was in demand for many decades, starting from the late 60s of the last century and up to the present time. Manufactured by V.A. Degtyarev Plant.]]

SWEP.StandardPresets = {
    "[Zenit]XQAAAQD4AQAAAAAAAAA9iIIiM7tuo1AtT00OeFDtNRc/1CeetbH4ACEnJvAnfb8B3/vNswA+zWzsss6c9KM5LheLGhKO53C9CtZroH3iQJbuHRY3Ll+z6tUjRr1E1P83k+c2/TDcTA/xvS+PqJFaOuh5j1XFjLZzoeLYWe1oALdzpDaWwgRuInUrjIFpeCQdN8nG1//nUP89XRzO+ze4AARTNBCDQHh2QCrRjHcIU1NySSYQQKHiyoQh8vA6BqQtd6ppRVHlvWwjXEmBRMAGexDQj43jNJ1RyoCgZuMXGrkJ3rksAA=="
}

SWEP.BarrelLength = 17
SWEP.Slot = 3
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_pk.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

-- def lps ghz

SWEP.DamageMax = 81 * 1
SWEP.DamageMin = 54 * 1
SWEP.PhysBulletMuzzleVelocity = 865 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      42 *2.54/100/0.0254
SWEP.PenetrationDelta = 78/100
SWEP.ArmorPiercing =    78/100
SWEP.RicochetChance =   39/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    52 * 1     },

    {   100 /0.0254 * 1, 
    76.6 * 1     },

    {   200 /0.0254 * 1, 
    72.8 * 1     },

    {   300 /0.0254 * 1, 
    38.7 * 1     },

    {   400 /0.0254 * 1, 
    64.5 * 1     },

    {   500 /0.0254 * 1, 
    60.5 * 1     },

    {   600 /0.0254 * 1, 
    58 * 1     },

    {   700 /0.0254 * 1, 
    56.38 * 1     },

    {   800 /0.0254 * 1, 
    55.25 * 1     },

    {   900 /0.0254 * 1, 
    54.37 * 1     },

    {   1000 /0.0254 * 1, 
    54 * 1     },
}




--          Spread
SWEP.Spread = 6.88 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 1.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.65 -- random up/down
SWEP.RecoilRandomSide = 1.5   -- random left/right

SWEP.RecoilAutoControl = 3.2 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1.25 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.5   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.75   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.1   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.2 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 4 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.75 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 900
SWEP.MalfunctionMeanShotsToFailMultHot = 0.5
SWEP.Overheat = true
SWEP.HeatCapacity = 250
SWEP.HeatDissipation = 1.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 650
SWEP.Firemodes = { { Mode = -1} }

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.75
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.5
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "357"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 2
SWEP.SecondarySupplyLimit = 2
SWEP.ReloadInSights = false 
SWEP.ShouldDropMag = false 
SWEP.ShouldDropMagEmpty = false 
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.65
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(180, 90, 0)
SWEP.DropMagazineVelocity = Vector(-40, 30, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.25, -5, 1.835),
    Ang = Angle(0, 0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21.5, 34, 6.5)
SWEP.CustomizeSnapshotFOV = 94
SWEP.CustomizeRotateAnchor = Vector(20, -4.25, -6)

SWEP.BipodPos = Vector(-2, 0, 0)
SWEP.BipodAng = Angle(0, 0, 0)

--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5.4, -7),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -2), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_1"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x54r_bt.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 0, -90)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_001",
    [3] = "patron_002",
    [4] = "patron_003",
    [5] = "patron_004",
    [6] = "patron_005",
    [7] = "patron_006",
    [8] = "patron_007",
    [9] = "patron_008",
    [10] = "patron_009",
    [11] = "patron_010",
    [12] = "patron_011",
    [13] = "patron_012",
    [14] = "patron_013",
    [15] = "patron_014",
    [16] = "patron_015",
    [17] = "patron_016",
    [18] = "patron_017",
    [19] = "patron_018",
    [20] = "patron_019",
    [21] = "patron_020",
    [22] = "patron_021",
    [23] = "patron_022",
    [24] = "patron_023",
    [25] = "patron_024",
    [26] = "patron_025",

}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/pkm/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "pkm_outdoor_close_loop1.ogg", path .. "pkm_outdoor_close_loop2.ogg", path .. "pkm_outdoor_close_loop3.ogg", path .. "pkm_outdoor_close_loop4.ogg", path .. "pkm_outdoor_close_loop5.ogg" }
SWEP.LayerSound = path .. "pkm_outdoor_close_loopt.ogg"

SWEP.ShootSoundIndoor = { path .. "pkm_indoor_close_loop1.ogg", path .. "pkm_indoor_close_loop2.ogg", path .. "pkm_indoor_close_loop3.ogg" }
SWEP.LayerSoundIndoor = path .. "pkm_indoor_close_loopt.ogg"

SWEP.DistantShootSound = { path .. "pkm_outdoor_distant_loop1.ogg", path .. "pkm_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "pkm_indoor_distant_loop1.ogg", path .. "pkm_indoor_distant_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSMachineGun
SWEP.ExitSightsSound = ARC9EFT.ADSMachineGun



------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mag_pkm_zid_pk_std_762x54r_100",
        "mag_cover",
        "mag_release",
        "mag_release_button",
        "belt_root",
        "belt_link_001",
        "patron_001",
        "belt_link_002",
        "patron_002",
        "belt_link_003",
        "patron_003",
        "belt_link_004",
        "patron_004",
        "belt_link_005",
        "patron_005",
        "belt_link_006",
        "patron_006",
        "belt_link_007",
        "patron_007",
        "belt_link_008",
        "patron_008",
        "belt_link_009",
        "patron_009",
        "belt_link_010",
        "patron_0010",
        "belt_link_011",
        "patron_011",
        "belt_link_012",
        "patron_012",
        "belt_link_013",
        "patron_013",
        "belt_link_014",
        "patron_014",
        "belt_link_015",
        "patron_015",
        "belt_link_016",
        "patron_016",
        "belt_link_017",
        "patron_017",
        "belt_link_018",
        "patron_018",
        "belt_link_019",
        "patron_019",
        "belt_link_020",
        "patron_020",
        "belt_link_021",
        "patron_021",
        "belt_link_022",
        "patron_022",
        "belt_link_023",
        "patron_023",
        "belt_link_024",
        "patron_024",
        "belt_link_025",
        "patron_025",
        "empty_link_001",
        "empty_link_002",
        "empty_link_003",
        "empty_link_004",
        "empty_link_005",
        "empty_link_006",
        "empty_link_007",
        "empty_link_008",
        "empty_link_009",
        "empty_link_010",
        "empty_link_011",
        "empty_link_012",
        "empty_link_013",
        "empty_link_014",
        "empty_link_015",
        "empty_link_016",
        "empty_link_017",
        "empty_link_018",
        "empty_link_019",
        "empty_link_020",
        "empty_link_021",
        "empty_link_022",
        "empty_link_023",
        "empty_link_024",
        "empty_link_025",
        "patron_001",
        "patron_002",
        "patron_003",
        "patron_004",
        "patron_005",
        "patron_006",
        "patron_007",
        "patron_008",
        "patron_009",
        "patron_010",
        "patron_011",
        "patron_012",
        "patron_013",
        "patron_014",
        "patron_015",
        "patron_016",
        "patron_017",
        "patron_018",
        "patron_019",
        "patron_020",
        "patron_021",
        "patron_022",
        "patron_023",
        "patron_024",
        "patron_025",
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
        local elements = swep:GetElements()
    
        local ending = ""
        local itspkp = elements["pkplol"]
    
        -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
        -- local rand = 0
        local nomag = false
    
        if elements["eft_pkm_mag_100"] then ending = 0
        else nomag = true end
    
        local empty = swep:Clip1() == 0 and !nomag
        
        -- 0 looking
        -- 1 slide check  (!empty)
        -- 2 mag checking  (!nomag)

        if anim == "inspect" or anim == "inspect_empty" then
            swep.EFTInspectnum = swep.EFTInspectnum or 0
            if IsFirstTimePredicted() then
                swep.EFTInspectnum = swep.EFTInspectnum + 1
            end
            local rand = swep.EFTInspectnum
            if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
            if rand == 0 and itspkp then return "inspect0_m" end
            if rand == 2 and !nomag then -- mag
                ending = "_mag_" .. ending
                
                if ARC9EFTBASE and SERVER then
                    net.Start("arc9eftmagcheck")
                    net.WriteBool(false) -- accurate or not based on mag type
                    net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                    net.WriteUInt(swep:GetCapacity(), 9)
                    net.Send(swep:GetOwner())
                end
            else
                ending = rand
            end
            
            return anim .. ending
        elseif anim == "reload" or anim == "reload_empty" or anim == "reload_sights" or anim == "reload_empty_sights" then
            if anim == "reload_sights" then anim = "reload" end
            if anim == "reload_empty_sights" then anim = "reload_empty" end
            if anim == "reload" and empty then anim = "reload_empty" end -- ??? 
            if nomag then return "reload_single" .. (itspkp and "_m" or "") end

            local animla = (anim .. ending .. (itspkp and "_m" or "") .. ((swep:GetSightAmount() > 0.5 or swep:GetBipod()) and "_sights" or ""))
            local timrr = swep:GetAnimationEntry(animla).MagSwapTime

            timer.Simple(timrr, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    swep:SetEFTShootedRounds(0)
                end
            end)
            return animla
        elseif anim == "fix" then
            rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
            -- rand = 2

            if ARC9EFTBASE and SERVER then
                timer.Simple(1.5, function()
                    if IsValid(swep) and IsValid(swep:GetOwner()) then
                        net.Start("arc9eftjam")
                        net.WriteUInt(rand, 3)
                        net.Send(swep:GetOwner())
                    end
                end)
            end
            -- print("llaodfod", swep:GetBipod())
            return "jam" .. rand .. ((rand == 2 and itspkp) and "_m" or "") .. ((swep:GetInSights() or swep:GetBipod()) and "_sights" or "")
        elseif anim == "draw" or anim == "ready" then
            if swep:GetValue("LHIK") then return anim .. "_lhik" end
        elseif anim == "fire" or anim == "fire_sights" then
            swep:SetEFTArmedDryfire(true)
        elseif anim == "dryfire" or anim == "dryfire_sights" then
            if swep:GetEFTArmedDryfire() then
                swep:SetEFTArmedDryfire(false)
                return anim .. "_armed"
            end
        elseif anim == "enter_sights" and swep:GetBipod() 
            then return "bipodfuckthis_enter"
        end

        -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
        return anim
    end
    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    

    

local beltt = {path .. "pk_belt_1.ogg",path .. "pk_belt_2.ogg",path .. "pk_belt_3.ogg",path .. "pk_belt_4.ogg",path .. "pk_belt_5.ogg",path .. "pk_belt_6.ogg",path .. "pk_belt_7.ogg",path .. "pk_belt_8.ogg",path .. "pk_belt_9.ogg" }

local alwayslhik = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local neverlhik = {
    { t = 0, lhik = 0 },
    { t = 1, lhik = 0 },
} 

local bipodpath = "weapons/darsu_eft/bipod/"
SWEP.EnterBipodSound = false 
SWEP.ExitBipodSound = { bipodpath .. "bipod_rpd_fold_1.ogg", bipodpath .. "bipod_rpd_fold_2.ogg", bipodpath .. "bipod_rpd_fold_3.ogg" }

SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            IKTimeLine = alwayslhik,
        },
        ["idle_sights"] = {
            Source = "idle_sights",
            IKTimeLine = neverlhik,
        },
    
        ["ready"] = {
            Source = "ready",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "pk_gun_flip_2.ogg", t = 0.3 },
                { s = path .. "pk_charge_out.ogg", t = 1.4 },
                { s = path .. "pk_charge_in.ogg", t = 1.7 },
                { s = path .. "pk_gun_flip_1.ogg", t = 2.3 },
            }
        },
        ["ready_lhik"] = {
            Source = "ready_lhik",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "pk_gun_flip_2.ogg", t = 0.3 },
                { s = path .. "pk_charge_out.ogg", t = 1.4 },
                { s = path .. "pk_charge_in.ogg", t = 1.7 },
                { s = path .. "pk_gun_flip_1.ogg", t = 2.3 },
            }
        },

        ["draw"] = {
            Source = "draw",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "pk_gun_flip_2.ogg", t = 0.3 },
            }
        },
        ["draw_lhik"] = {
            Source = "draw_lhik",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "pk_gun_flip_2.ogg", t = 0.3 },
            }
        },

        ["holster"] = {
            Source = "holster",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
                { s = path .. "pk_gun_flip_4.ogg", t = 0.2 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "ash12_trigger_hammer.ogg", t = 0 },
                { s = beltt, t = 0.05 },
            }
        },
        ["fire_sights"] = {
            IKTimeLine = neverlhik,
            Source = {"fire_sights1", "fire_sights2", "fire_sights3"},
            EventTable = {
                { s = path .. "ash12_trigger_hammer.ogg", t = 0 },
                { s = beltt, t = 0.05 },
            }
        },
        ["dryfire"] = {
            Source = "fire_dry",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "ash12_trigger_empty.ogg", t = 0 },
            }
        },
        ["dryfire_sights"] = {
            Source = "fire_dry_sights",
            IKTimeLine = neverlhik,
            EventTable = {
                { s = path .. "ash12_trigger_empty.ogg", t = 0 },
            }
        },
        ["dryfire_armed"] = {
            Source = "fire_dry",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_fire_dry_armed.ogg", t = 0 },
            }
        },
        ["dryfire_sights_armed"] = {
            Source = "fire_dry_sights",
            IKTimeLine = neverlhik,
            EventTable = {
                { s = path .. "pk_fire_dry_armed.ogg", t = 0 },
            }
        },
    
        ["reload_single"] = {
            Source = "reload_single",
            MinProgress = 0.96,
            FireASAP = true,
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.17 },
                { s = path .. "pk_charge_out.ogg", t = 1.05 },
                { s = path .. "pk_charge_in.ogg", t = 1.33 },
                { s = path .. "pk_dust_open.ogg", t = 2.0 },
                { s = path .. "pk_cover_open.ogg", t = 2.22 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.65 },
                { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2.5},
                { s = path .. "pk_gun_flip_1.ogg", t = 3.68 },
                { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 4.01 },
                { s = path .. "pk_cover_close.ogg", t = 4.3 },
                { s = path .. "pk_gun_flip_2.ogg", t = 5.25 },
            }
        },
        ["reload_single_m"] = {
            Source = "reload_single_m",
            MinProgress = 0.96,
            FireASAP = true,
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.2 },
                { s = path .. "pk_charge_out.ogg", t = 1.05 },
                { s = path .. "pk_charge_in.ogg", t = 1.33 },

                { s = path .. "pk_sight_button_in.ogg", t = 2.06 },
                { s = path .. "pk_sight_mount_out.ogg", t = 2.2 },
                { s = path .. "pk_sight_button_out.ogg", t = 2.36 },
                
                { s = path .. "pk_cover_open.ogg", t = 2.22+0.6 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.65+0.6 },
                { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2.5+0.6},
                { s = path .. "pk_gun_flip_1.ogg", t = 3.68+0.6 },
                { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 4.01+0.6 },
                { s = path .. "pk_cover_close.ogg", t = 4.3+0.6 },

                { s = path .. "pk_sight_button_in.ogg", t = 6 },
                { s = path .. "pk_gun_flip_1.ogg", t = 6.33 },
                { s = path .. "pk_sight_mount_in.ogg", t = 6.47 },
                { s = path .. "pk_sight_button_out.ogg", t = 6.68 },
                { s = path .. "pk_gun_flip_2.ogg", t = 6.99 },
            }
        },
    
        ["reload0"] = {
            Source = "reload",
            MinProgress = 0.93,
            MagSwapTime = 4.3,
            FireASAP = true,
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.22 },
                { s = path .. "pk_cover_open.ogg", t = 1.24 },
                { s = path .. "pk_belt_out.ogg", t = 2.02 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.45 },
                { s = path .. "pk_mag_release.ogg", t = 2.54 },
                { s = path .. "pk_mag_out.ogg", t = 2.86+0.25 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.92 },
                { s = pouchin, t = 4.14 },
                { s = pouchout, t = 4.51 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.76 },
                { s = path .. "pk_mag_flip_5.ogg", t = 4.5 },
                { s = path .. "pk_mag_in.ogg", t = 4.21+1.3 },
                { s = path .. "pk_belt_in.ogg", t = 6.24 },
                { s = path .. "pk_cover_close.ogg", t = 7.2 },
                { s = path .. "pk_gun_flip_2.ogg", t = 8.23 },
            },
        },
        ["reload0_m"] = {
            Source = "reload_m",
            MinProgress = 0.97,
            MagSwapTime = 5,
            FireASAP = true,
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.22 },
                { s = path .. "pk_sight_button_in.ogg", t = 1.15 },
                { s = path .. "pk_sight_mount_out.ogg", t = 1.24 },
                { s = path .. "pk_sight_button_out.ogg", t = 1.43 },

                { s = path .. "pk_cover_open.ogg", t = 1.24+0.8 },
                { s = path .. "pk_belt_out.ogg", t = 2.02+0.9 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.45+0.9 },
                { s = path .. "pk_mag_release.ogg", t = 2.54+0.9 },
                { s = path .. "pk_mag_out.ogg", t = 2.86+0.9 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.92+0.9 },
                { s = pouchin, t = 4.14+0.9 },
                { s = pouchout, t = 4.51+0.9 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.76+0.9 },
                { s = path .. "pk_mag_flip_5.ogg", t = 4.5+0.9 },
                { s = path .. "pk_mag_in.ogg", t = 4.21+1.1+0.9 },
                { s = path .. "pk_belt_in.ogg", t = 6.24+0.9 },
                { s = path .. "pk_cover_close.ogg", t = 7.0+0.9 },

                { s = path .. "pk_gun_flip_5.ogg", t = 8.6 },
                { s = path .. "pk_sight_button_in.ogg", t = 9.04 },
                { s = path .. "pk_sight_mount_in.ogg", t = 9.42 },
                { s = path .. "pk_sight_button_out.ogg", t = 9.71 },
                { s = path .. "pk_gun_flip_2.ogg", t = 9.95 },
            },
        },
        ["reload0_sights"] = {
            Source = "reload_sights",
            MinProgress = 0.85,
            MagSwapTime = 4.3+0.8,
            FireASAP = true,
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.07 },

                { s = path .. "pk_cover_open.ogg", t = 1.24+0.7 },
                { s = path .. "pk_belt_out.ogg", t = 2.02+0.8 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.45+0.8 },
                { s = path .. "pk_mag_release.ogg", t = 2.54+0.8 },
                { s = path .. "pk_mag_out.ogg", t = 2.86+0.8 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.92+0.8 },
                { s = pouchin, t = 4.14+0.8 },
                { s = pouchout, t = 4.51+0.8 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.76+0.8 },
                { s = path .. "pk_mag_flip_5.ogg", t = 4.5+0.8 },
                { s = path .. "pk_mag_in.ogg", t = 4.21+1.3+0.8 },
                { s = path .. "pk_belt_in.ogg", t = 6.24+0.8 },
                { s = path .. "pk_cover_close.ogg", t = 7.0+0.8 },
                { s = path .. "pk_gun_flip_2.ogg", t = 8.23+0.8 },
            },
        },
        ["reload0_m_sights"] = {
            Source = "reload_m_sights",
            MinProgress = 0.85,
            MagSwapTime = 3,
            FireASAP = true,
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.07 },
                
                { s = path .. "pk_sight_button_in.ogg", t = 1.15+0.8 },
                { s = path .. "pk_sight_mount_out.ogg", t = 1.24+0.8 },
                { s = path .. "pk_sight_button_out.ogg", t = 1.43+0.8 },

                { s = path .. "pk_cover_open.ogg", t = 1.24+0.9+0.55 },
                { s = path .. "pk_belt_out.ogg", t = 2.02+0.9+0.75 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.45+0.9+0.85 },
                { s = path .. "pk_mag_release.ogg", t = 2.54+0.9+0.85 },
                { s = path .. "pk_mag_out.ogg", t = 2.86+0.9+0.85 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.92+0.9+0.85 },
                { s = pouchin, t = 4.14+0.9+0.85 },
                { s = pouchout, t = 4.51+0.9+0.85 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.76+0.9+0.85 },
                { s = path .. "pk_mag_flip_5.ogg", t = 4.5+0.9+0.85 },
                { s = path .. "pk_mag_in.ogg", t = 4.21+1.1+0.9+0.85 },
                { s = path .. "pk_belt_in.ogg", t = 6.24+0.9+0.85 },
                { s = path .. "pk_cover_close.ogg", t = 7.0+0.9+0.85 },

                { s = path .. "pk_gun_flip_5.ogg", t = 8.6+0.8 },
                { s = path .. "pk_sight_button_in.ogg", t = 9.04+0.8 },
                { s = path .. "pk_sight_mount_in.ogg", t = 9.42+0.8 },
                { s = path .. "pk_sight_button_out.ogg", t = 9.71+0.8 },
                { s = path .. "pk_gun_flip_2.ogg", t = 9.95+0.8 },
            },
        },
    
        ["reload_empty0"] = {
            Source = "reload_empty", 
            MinProgress = 0.97,
            MagSwapTime = 3.5,
            DropMagAt = 3.26,
            FireASAP = true,
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.22 },
                { s = path .. "pk_cover_open.ogg", t = 1.0 },
                { s = path .. "pk_mag_release.ogg", t = 2.09 },
                { s = path .. "pk_mag_flip_4.ogg", t = 2.25 },
                { s = path .. "pk_mag_out.ogg", t = 2.5 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.85 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.22 },
                { s = pouchout, t = 3.56 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.1 },
                { s = path .. "pk_mag_flip_2.ogg", t = 4.54 },
                { s = path .. "pk_mag_in.ogg", t = 4.73 },
                { s = path .. "pk_belt_in.ogg", t = 5.55 },
                { s = path .. "pk_gun_flip_1.ogg", t = 6.61 },
                { s = path .. "pk_cover_close.ogg", t = 6.58 },
                { s = path .. "pk_gun_flip_4.ogg", t = 7.45 },
                { s = path .. "pk_charge_full.ogg", t = 7.41 },
                { s = path .. "pk_gun_flip_2.ogg", t = 8.5 },
                
                {hide = 0, t = 0},
                {hide = 1, t = 3.26},
                {hide = 0, t = 3.5+0.2}
            },
        },
        ["reload_empty0_m"] = {
            Source = "reload_empty_m", 
            MinProgress = 0.97,
            MagSwapTime = 3.5+0.7,
            DropMagAt = 3.98,
            FireASAP = true,
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.22 },
                { s = path .. "pk_sight_button_in.ogg", t = 1.02 },
                { s = path .. "pk_sight_mount_out.ogg", t = 1.12 },
                { s = path .. "pk_sight_button_out.ogg", t = 1.33 },

                { s = path .. "pk_gun_flip_2.ogg", t = 0.22+0.7 },
                { s = path .. "pk_cover_open.ogg", t = 1.0+0.7 },
                { s = path .. "pk_mag_release.ogg", t = 2.09+0.7 },
                { s = path .. "pk_mag_flip_4.ogg", t = 2.25+0.7 },
                { s = path .. "pk_mag_out.ogg", t = 2.5+0.65 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.85+0.7 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.22+0.7 },
                { s = pouchout, t = 3.56+0.7 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.1+0.7 },
                { s = path .. "pk_mag_flip_2.ogg", t = 4.54+0.7 },
                { s = path .. "pk_mag_in.ogg", t = 4.73+0.7 },
                { s = path .. "pk_belt_in.ogg", t = 5.55+0.7 },
                { s = path .. "pk_gun_flip_1.ogg", t = 6.61+0.7 },
                { s = path .. "pk_cover_close.ogg", t = 6.58+0.7 },
                
                { s = path .. "pk_gun_flip_5.ogg", t = 8.84 },
                { s = path .. "pk_sight_button_in.ogg", t = 8.47 },
                { s = path .. "pk_sight_mount_in.ogg", t = 8.87 },
                { s = path .. "pk_sight_button_out.ogg", t = 9.15 },
                { s = path .. "pk_gun_flip_4.ogg", t = 9.35 },
                { s = path .. "pk_charge_full.ogg", t = 9.5 },
                { s = path .. "pk_gun_flip_2.ogg", t = 10.62 },
                
                {hide = 0, t = 0},
                {hide = 1, t = 3.98},
                {hide = 0, t = 3.5+0.7+0.2}
            },
        },
        ["reload_empty0_sights"] = {
            Source = "reload_empty_sights", 
            MinProgress = 0.97,
            MagSwapTime = 3.5+0.63,
            DropMagAt = 3.26+0.63,
            FireASAP = true,
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },
                { s = path .. "pk_gun_flip_2.ogg", t = 0.8 },
                
                { s = path .. "pk_cover_open.ogg", t = 1.0+0.63 },
                { s = path .. "pk_mag_release.ogg", t = 2.09+0.63 },
                { s = path .. "pk_mag_flip_4.ogg", t = 2.25+0.63 },
                { s = path .. "pk_mag_out.ogg", t = 2.5+0.63 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.85+0.63 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.22+0.63 },
                { s = pouchout, t = 3.56+0.63 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.1+0.63 },
                { s = path .. "pk_mag_flip_2.ogg", t = 4.54+0.63 },
                { s = path .. "pk_mag_in.ogg", t = 4.73+0.63 },
                { s = path .. "pk_belt_in.ogg", t = 5.55+0.63 },
                { s = path .. "pk_gun_flip_1.ogg", t = 6.61+0.63 },
                { s = path .. "pk_cover_close.ogg", t = 6.58+0.63 },
                { s = path .. "pk_gun_flip_4.ogg", t = 7.45+0.63 },
                { s = path .. "pk_charge_full.ogg", t = 7.41+0.63 },
                { s = path .. "pk_gun_flip_2.ogg", t = 8.5+0.63 },
                
                {hide = 0, t = 0},
                {hide = 1, t = 3.26+0.63},
                {hide = 0, t = 3.5+0.63+0.2}
            },
        },
        ["reload_empty0_m_sights"] = {
            Source = "reload_empty_m_sights", 
            MinProgress = 0.97,
            MagSwapTime = 3.5+0.7+0.5,
            DropMagAt = 3.98+0.5,
            FireASAP = true,
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },
                { s = path .. "pk_gun_flip_2.ogg", t = 0.8 },

                { s = path .. "pk_sight_button_in.ogg", t = 1.02+0.63 },
                { s = path .. "pk_sight_mount_out.ogg", t = 1.12+0.63 },
                { s = path .. "pk_sight_button_out.ogg", t = 1.33+0.63 },

                { s = path .. "pk_gun_flip_2.ogg", t = 0.22+0.7+0.63 },
                { s = path .. "pk_cover_open.ogg", t = 1.0+0.7+0.63 },
                { s = path .. "pk_mag_release.ogg", t = 2.09+0.7+0.63 },
                { s = path .. "pk_mag_flip_4.ogg", t = 2.25+0.7+0.63 },
                { s = path .. "pk_mag_out.ogg", t = 2.5+0.65+0.63 },
                { s = path .. "pk_gun_flip_4.ogg", t = 2.85+0.7+0.63 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.22+0.7+0.63 },
                { s = pouchout, t = 3.56+0.7+0.63 },
                { s = path .. "pk_gun_flip_3.ogg", t = 4.1+0.7+0.63 },
                { s = path .. "pk_mag_flip_2.ogg", t = 4.54+0.7+0.63 },
                { s = path .. "pk_mag_in.ogg", t = 4.73+0.7+0.63 },
                { s = path .. "pk_belt_in.ogg", t = 5.55+0.7+0.63 },
                { s = path .. "pk_gun_flip_1.ogg", t = 6.61+0.7+0.63 },
                { s = path .. "pk_cover_close.ogg", t = 6.58+0.7+0.63 },
                
                { s = path .. "pk_gun_flip_5.ogg", t = 8.84+0.63 },
                { s = path .. "pk_sight_button_in.ogg", t = 8.47+0.63 },
                { s = path .. "pk_sight_mount_in.ogg", t = 8.87+0.63 },
                { s = path .. "pk_sight_button_out.ogg", t = 9.15+0.63 },
                { s = path .. "pk_gun_flip_4.ogg", t = 9.35+0.63 },
                { s = path .. "pk_charge_full.ogg", t = 9.5+0.63 },
                { s = path .. "pk_gun_flip_2.ogg", t = 10.62+0.63 },

                
                {hide = 0, t = 0},
                {hide = 1, t = 3.98+0.5},
                {hide = 0, t = 3.5+0.7+0.5+0.2}
            },
        },
    

        ["toggle"] = {
            Source = "mod_switch",
            IKTimeLine = alwayslhik,
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            IKTimeLine = alwayslhik,
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["toggle_sights"] = {
            Source = "mod_switch_sights",
            IKTimeLine = neverlhik,
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights_sights"] = {
            Source = "mod_switch_sights",
            IKTimeLine = neverlhik,
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    
    
        
        ["jam1"] = {
            Source = "jam_shell",
            EventTable = {
                { s = path .. "pk_gun_flip_3.ogg", t = 0.16 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.05 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.4 },
                { s = path .. "pk_charge_full.ogg", t = 2.0 },
                { s = path .. "pk_gun_flip_3.ogg", t = 3.35 },
                { s = path .. "m203_hand_out_tube.ogg", t = 3.98 },
                { s = path .. "ak_jam_shell_grab.ogg", t = 4.38 },
                { s = path .. "ak_jam_shell_remove.ogg", t = 4.71 },
                { s = path .. "pk_gun_flip_1.ogg", t = 4.82 },
                { s = randspin, t = 4.9 },
                { s = ARC9EFT.Shells556, t = 5.26 },
                { s = path .. "pk_gun_flip_4.ogg", t = 5.57 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.55, lhik = 1 },
                { t = 0.66, lhik = 0 },
                { t = 0.79, lhik = 0 },
                { t = 0.9, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        
        ["jam2"] = {
            Source = "jam_feed",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_3.ogg", t = 0.16 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.12 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.5 },
                { s = path .. "pk_cover_open.ogg", t = 2.63 },
                { s = path .. "pk_belt_out.ogg", t = 3.53 },
                { s = path .. "pk_charge_out.ogg", t = 4 },
                { s = path .. "pk_charge_in.ogg", t = 4.5 },
                { s = path .. "pk_gun_flip_1.ogg", t = 4.6 },
                { s = path .. "pk_dust_open.ogg", t = 5.48 },
                { s = path .. "pk_dust_chamber_out.ogg", t = 5.93 },
                { s = path .. "pk_dust_close.ogg", t = 6.9 },
                { s = ARC9EFT.Shells556, t = 7.3 },
                { s = path .. "pk_belt_in.ogg", t = 8.34 },
                { s = path .. "pk_belt_8.ogg", t = 9.16 },
                { s = path .. "pk_chamber_in.ogg", t = 9.79 },
                { s = path .. "pk_belt_3.ogg", t = 10.82 },
                { s = path .. "pk_cover_close.ogg", t = 11.4 },
                { s = path .. "pk_gun_flip_2.ogg", t = 12.32 },

            },
        },
        ["jam2_m"] = {
            Source = "jam_feed_m",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_3.ogg", t = 0.16 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.12 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.5 },

                { s = path .. "pk_sight_button_in.ogg", t = 2.68 },
                { s = path .. "pk_sight_mount_out.ogg", t = 2.83 },
                { s = path .. "pk_sight_button_out.ogg", t = 3.04 },

                { s = path .. "pk_cover_open.ogg", t = 2.63+0.73 },
                { s = path .. "pk_belt_out.ogg", t = 3.53+0.73 },
                { s = path .. "pk_charge_out.ogg", t = 4+0.73 },
                { s = path .. "pk_charge_in.ogg", t = 4.5+0.73 },
                { s = path .. "pk_gun_flip_1.ogg", t = 4.6+0.73 },
                { s = path .. "pk_dust_open.ogg", t = 5.48+0.73 },
                { s = path .. "pk_dust_chamber_out.ogg", t = 5.93+0.73 },
                { s = path .. "pk_dust_close.ogg", t = 6.9+0.73 },
                { s = ARC9EFT.Shells556, t = 7.3+0.73 },
                { s = path .. "pk_belt_in.ogg", t = 8.34+0.7 },
                { s = path .. "pk_belt_8.ogg", t = 9.16+0.7 },
                { s = path .. "pk_chamber_in.ogg", t = 9.79+0.7 },
                { s = path .. "pk_belt_3.ogg", t = 10.82+0.7 },
                { s = path .. "pk_cover_close.ogg", t = 11.4+0.7 },


                { s = path .. "pk_sight_button_in.ogg", t = 13.07 },
                { s = path .. "pk_gun_flip_1.ogg", t = 13.45 },
                { s = path .. "pk_sight_mount_in.ogg", t = 13.6 },
                { s = path .. "pk_sight_button_out.ogg", t = 13.85 },
                { s = path .. "pk_gun_flip_2.ogg", t = 14.05 },

            },
        },  

        ["jam3"] = {
            Source = "jam_hard",
            IKTimeLine = alwayslhik,
            EventTable = {
                    { s = path .. "pk_gun_flip_3.ogg", t = 0.165 },
                    { s = path .. "pk_gun_flip_2.ogg", t = 1.05 },
                    { s = path .. "pk_gun_flip_1.ogg", t = 1.2 },
                    { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 2.22 },
                    { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.71 },
                    { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 3.28 },
                    { s = path .. "pk_gun_flip_4.ogg", t = 3 },
                    { s = path .. "ak_jam_stuckbolt_out_hit1.ogg", t = 4 },
                    { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 4.57 },
                    { s = path .. "pk_charge_out.ogg", t = 4.95 },
                    { s = path .. "pk_belt_3.ogg", t = 5 },
                    { s = path .. "pk_charge_in.ogg", t = 5.57 },
                    { s = path .. "pk_gun_flip_2.ogg", t = 6 },
                },
            EjectAt = 5.09
        },    
        
        ["jam4"] = {
            Source = "jam_soft",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_3.ogg", t = 0.15 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.05 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.2 },
                { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 2.38 },
                { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.85 },
                { s = path .. "pk_charge_out.ogg", t = 3.25 },
                { s = path .. "pk_belt_3.ogg", t = 3.3 },
                { s = path .. "pk_charge_in.ogg", t = 3.7 },
                { s = path .. "pk_gun_flip_2.ogg", t = 4.25 },
            },
            EjectAt = 3.3
        },    
    
        
        ["jam1_sights"] = {
            Source = "jam_shell_sights",
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },

                { s = path .. "pk_gun_flip_3.ogg", t = 0.16+0.52 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.05+0.52 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.4+0.52 },
                { s = path .. "pk_charge_full.ogg", t = 2.0 +0.52},
                { s = path .. "pk_gun_flip_3.ogg", t = 3.35+0.52 },
                { s = path .. "m203_hand_out_tube.ogg", t = 3.98+0.52 },
                { s = path .. "ak_jam_shell_grab.ogg", t = 4.38+0.52 },
                { s = path .. "ak_jam_shell_remove.ogg", t = 4.71+0.52 },
                { s = path .. "pk_gun_flip_1.ogg", t = 4.82+0.52 },
                { s = randspin, t = 4.9+0.52 },
                { s = ARC9EFT.Shells556, t = 5.26+0.52 },
                { s = path .. "pk_gun_flip_4.ogg", t = 5.57+0.52 },
            },
            IKTimeLine = {
                { t = 0, lhik = 0 },
                { t = 0.02, lhik = 0 },
                { t = 0.13, lhik = 1 },
                { t = 0.64, lhik = 1 },
                { t = 0.69, lhik = 0 },
                { t = 0.82, lhik = 0 },
                { t = 0.9, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        
        ["jam2_sights"] = {
            Source = "jam_feed_sights",
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },

                { s = path .. "pk_gun_flip_3.ogg", t = 0.16+0.66 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.12+0.66 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.5+0.66 },
                { s = path .. "pk_cover_open.ogg", t = 2.63+0.66 },
                { s = path .. "pk_belt_out.ogg", t = 3.53+0.66 },
                { s = path .. "pk_charge_out.ogg", t = 4+0.66 },
                { s = path .. "pk_charge_in.ogg", t = 4.5+0.66 },
                { s = path .. "pk_gun_flip_1.ogg", t = 4.6+0.66 },
                { s = path .. "pk_dust_open.ogg", t = 5.48+0.66 },
                { s = path .. "pk_dust_chamber_out.ogg", t = 5.93+0.66 },
                { s = path .. "pk_dust_close.ogg", t = 6.9+0.66 },
                { s = ARC9EFT.Shells556, t = 7.3+0.66 },
                { s = path .. "pk_belt_in.ogg", t = 8.34+0.66 },
                { s = path .. "pk_belt_8.ogg", t = 9.16+0.66 },
                { s = path .. "pk_chamber_in.ogg", t = 9.79+0.66 },
                { s = path .. "pk_belt_3.ogg", t = 10.82+0.66 },
                { s = path .. "pk_cover_close.ogg", t = 11.4+0.66 },
                { s = path .. "pk_gun_flip_2.ogg", t = 12.32+0.66 },
            },
            IKTimeLine = {
                { t = 0, lhik = 0 },
                { t = 0.01, lhik = 0 },
                { t = 0.04, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        ["jam2_m_sights"] = {
            Source = "jam_feed_m_sights",
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },

                { s = path .. "pk_gun_flip_3.ogg", t = 0.16+0.54 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.12+0.54 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.5+0.54 },

                { s = path .. "pk_sight_button_in.ogg", t = 2.68+0.54 },
                { s = path .. "pk_sight_mount_out.ogg", t = 2.83+0.54 },
                { s = path .. "pk_sight_button_out.ogg", t = 3.04+0.54 },

                { s = path .. "pk_cover_open.ogg", t = 2.63+0.73+0.54 },
                { s = path .. "pk_belt_out.ogg", t = 3.53+0.73+0.54 },
                { s = path .. "pk_charge_out.ogg", t = 4+0.73+0.54 },
                { s = path .. "pk_charge_in.ogg", t = 4.5+0.73+0.54 },
                { s = path .. "pk_gun_flip_1.ogg", t = 4.6+0.73+0.54 },
                { s = path .. "pk_dust_open.ogg", t = 5.48+0.73+0.54 },
                { s = path .. "pk_dust_chamber_out.ogg", t = 5.93+0.73+0.54 },
                { s = path .. "pk_dust_close.ogg", t = 6.9+0.73+0.54 },
                { s = ARC9EFT.Shells556, t = 7.3+0.73+0.54 },
                { s = path .. "pk_belt_in.ogg", t = 8.34+0.7+0.54 },
                { s = path .. "pk_belt_8.ogg", t = 9.16+0.7+0.54 },
                { s = path .. "pk_chamber_in.ogg", t = 9.79+0.7+0.54 },
                { s = path .. "pk_belt_3.ogg", t = 10.82+0.7+0.54 },
                { s = path .. "pk_cover_close.ogg", t = 11.4+0.7+0.54 },

                { s = path .. "pk_sight_button_in.ogg", t = 13.07+0.54 },
                { s = path .. "pk_gun_flip_1.ogg", t = 13.45+0.54 },
                { s = path .. "pk_sight_mount_in.ogg", t = 13.6+0.54 },
                { s = path .. "pk_sight_button_out.ogg", t = 13.85+0.54 },
                { s = path .. "pk_gun_flip_2.ogg", t = 14.05+0.54 },
            },
            IKTimeLine = {
                { t = 0, lhik = 0 },
                { t = 0.02, lhik = 0 },
                { t = 0.06, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },  

        ["jam3_sights"] = {
            Source = "jam_hard_sights",
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },

                    { s = path .. "pk_gun_flip_3.ogg", t = 0.165+0.61 },
                    { s = path .. "pk_gun_flip_2.ogg", t = 1.05+0.61 },
                    { s = path .. "pk_gun_flip_1.ogg", t = 1.2+0.61 },
                    { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 2.22+0.61 },
                    { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.71+0.61 },
                    { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 3.28+0.61 },
                    { s = path .. "pk_gun_flip_4.ogg", t = 3+0.61 },
                    { s = path .. "ak_jam_stuckbolt_out_hit1.ogg", t = 4+0.61 },
                    { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 4.57+0.61 },
                    { s = path .. "pk_charge_out.ogg", t = 4.95+0.61 },
                    { s = path .. "pk_belt_3.ogg", t = 5+0.61 },
                    { s = path .. "pk_charge_in.ogg", t = 5.57+0.61 },
                    { s = path .. "pk_gun_flip_2.ogg", t = 6+0.61 },
            },
            IKTimeLine = {
                { t = 0, lhik = 0 },
                { t = 0.02, lhik = 0 },
                { t = 0.11, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 5.09+0.61
        },    
        
        ["jam4_sights"] = {
            Source = "jam_soft_sights",
            EventTable = {
                { s = path .. "pk_gun_flip_1.ogg", t = 0.1 },
                { s = path .. "m203_hand_final_movement.ogg", t = 0.48 },

                { s = path .. "pk_gun_flip_3.ogg", t = 0.15+0.49 },
                { s = path .. "pk_gun_flip_2.ogg", t = 1.05+0.49 },
                { s = path .. "pk_gun_flip_1.ogg", t = 1.2+0.49 },
                { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 2.38+0.49 },
                { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.85+0.49 },
                { s = path .. "pk_charge_out.ogg", t = 3.25+0.49 },
                { s = path .. "pk_belt_3.ogg", t = 3.3+0.49 },
                { s = path .. "pk_charge_in.ogg", t = 3.7+0.49 },
                { s = path .. "pk_gun_flip_2.ogg", t = 4.25+0.49 },
            },
            IKTimeLine = {
                { t = 0, lhik = 0 },
                { t = 0.03, lhik = 0 },
                { t = 0.15, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 3.3+0.49
        },
    


        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
    
        ["inspect1"] = {
            Source = "look",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s =  path .. "pk_gun_flip_2.ogg", t = 0.05 },
                { s =  path .. "pk_gun_flip_5.ogg", t = 0.45 },
                { s =  path .. "pk_gun_flip_3.ogg", t = 1.65 },
                { s =  path .. "pk_gun_flip_4.ogg", t = 2.8 },
                { s =  path .. "pk_gun_flip_1.ogg", t = 3.15 },
            },
        },
    
        ["inspect_mag_0"] = {
            Source = "magcheck",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s =  path .. "pk_gun_flip_3.ogg", t = 0.28 },
                { s =  path .. "pk_belt_5.ogg", t = 1.18 },
                { s =  path .. "pk_dust_open.ogg", t = 1.33-0.2 },
                { s =  path .. "pk_dust_close.ogg", t = 2.74-0.75 },
                { s =  path .. "pk_gun_flip_2.ogg", t = 3.3-0.2 },
            },
        },

        ["inspect0"] = {
            Source = "check_chamber",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.25 },
                { s = path .. "pk_cover_open.ogg", t = 1.0 },
                { s = path .. "pk_gun_flip_5.ogg", t = 1.32-0.5 },
                { s = path .. "pk_cover_close.ogg", t = 2.8-1 },
                { s = path .. "pk_gun_flip_4.ogg", t = 3.05-0.75 },
            },
        },
        ["inspect0_m"] = {
            Source = "check_chamber_m",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_gun_flip_2.ogg", t = 0.25 },
                
                { s = path .. "pk_sight_button_in.ogg", t = 1.18 },
                { s = path .. "pk_sight_mount_out.ogg", t = 1.29 },
                { s = path .. "pk_sight_button_out.ogg", t = 1.49 },

                { s = path .. "pk_cover_open.ogg", t = 1.0+0.76 },
                { s = path .. "pk_gun_flip_5.ogg", t = 1.32-0.5+0.76  },
                { s = path .. "pk_cover_close.ogg", t = 2.8-1+0.76  },
                
                { s = path .. "pk_sight_button_in.ogg", t = 3.55 },
                { s = path .. "pk_gun_flip_1.ogg", t = 3.82 },
                { s = path .. "pk_sight_mount_in.ogg", t = 4.05 },
                { s = path .. "pk_sight_button_out.ogg", t = 4.33 },

                { s = path .. "pk_gun_flip_4.ogg", t = 4.64  },
            },
        },
        
        ["enter_sights"] = {
            Source = "ironsight_in",
            NoStatAffectors = true,
            FireASAP = true,
            MinProgress = 1,
            EventTable = {
                { s =  path .. "pk_gun_flip_2.ogg", t = 0.05 },
                { s =  path .. "m203_hand_out_tube.ogg", t = 0.21 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.1, lhik = 1 },
                { t = 0.36, lhik = 0 },
                { t = 1, lhik = 0 },
            },
        },
        ["exit_sights"] = {
            Source = "ironsight_out",
            NoStatAffectors = true,
            FireASAP = true,
            MinProgress = 1,
            EventTable = {
                { s =  path .. "pk_gun_flip_4.ogg", t = 0.1 },
                { s =  path .. "m203_hand_final_movement.ogg", t = 0.48 },
            },
            IKTimeLine = {
                { t = 0, lhik = 0 },
                { t = 0.2, lhik = 0 },
                { t = 0.45, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["bipodfuckthis_enter"] = {
            Source = "ironsight_in",
            NoStatAffectors = true,
            FireASAP = true,
            MinProgress = 1,
            EventTable = {
                { s =  path .. "pk_gun_flip_2.ogg", t = 0.05 },
                { s =  path .. "m203_hand_out_tube.ogg", t = 0.21 },
                { s = { bipodpath .. "bipod_rpd_unfold_1.ogg", bipodpath .. "bipod_rpd_unfold_2.ogg", bipodpath .. "bipod_rpd_unfold_3.ogg" }, t = 0.2 },
                { s = { bipodpath .. "bipod_stand_on_1.ogg", bipodpath .. "bipod_stand_on_2.ogg", bipodpath .. "bipod_stand_on_3.ogg", bipodpath .. "bipod_stand_on_4.ogg", bipodpath .. "bipod_stand_on_5.ogg" }, t = 0.3 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.1, lhik = 1 },
                { t = 0.36, lhik = 0 },
                { t = 1, lhik = 0 },
            },
        },
    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["pkplol"] = { Bodygroups = { {1, 1} }, Skin = 1 },
    ["eft_pkm_mag_100"] = { Bodygroups = { {2, 1}, {3, 1} } },

    ["eft_barrel_pkm"] = { Bodygroups = { {4, 1} } },
    ["eft_barrel_pkp"] = { Bodygroups = { {4, 2} } },

    ["eft_muzzle_pkm_dtk1p"] = { Bodygroups = { {8, 3} } },
    ["eft_muzzle_pkm_fh"] = { Bodygroups = { {8, 2} } },
    ["eft_muzzle_pkm_mb"] = { Bodygroups = { {8, 1} } },

    ["eft_pkm_bipod"] = { Bodygroups = { {5, 1} } },

    ["eft_hg_pk_zenit"] = { Bodygroups = { {6, 1} } },
    ["eft_mount_b50_66"] = { Bodygroups = { {7, 2} } },
    ["eft_mount_b50_16"] = { Bodygroups = { {7, 1} } },

    ["eft_pg_pk"] = { Bodygroups = { {9, 1} } },
    ["eft_pg_pkb"] = { Bodygroups = { {9, 2} } },

    ["eft_rs_pk"] = { Bodygroups = { {10, 1} } },

    ["eft_stock_pkm_wood"] = { Bodygroups = { {11, 1} } },
    ["eft_stock_pkm_pl"] = { Bodygroups = { {11, 2} } },
    ["eft_stock_pkm_zenit"] = { Bodygroups = { {11, 3} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_pk_barrel",
        Bone = "mod_barrel",
        Installed = "eft_barrel_pkm",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_muzzle_pkm_fh"
            }
        }
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_pkm",
        Bone = "mod_magazine",
        Installed = "eft_pkm_mag_100",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    {
        PrintName = "Ammunition",
        Bone = "mod_magazine",
        Category = "eft_ammo_762x54r",
        Installed = "eft_ammo_762x54r_lps_gzh",
        Integral = "eft_ammo_762x54r_lps_gzh",
        Pos = Vector(0, 0, -5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Dovetail",
        Category = "eft_mount_dovetail",
        RejectAttachments = { ["eft_mount_dovetail_b13"] = true, ["eft_mount_dovetail_b13v"] = true, },
        Bone = "mod_scope",
        Pos = Vector(0.05, 2, .5),
        Ang = Angle(0, -90, 0),
        RequireElements = {"pkplol"},
    },
    {
        PrintName = "Bipod",
        Category = "eft_bipod_pkm",
        Bone = "mod_bipod",
        Installed = "eft_pkm_bipod",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_pk_hg",
        Bone = "mod_handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Pistol Grip",
        Category = "eft_pk_pg",
        Bone = "mod_pistolgrip",
        Installed = "eft_pg_pk",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_pk_stock",
        Bone = "mod_stock",
        Installed = "eft_stock_pkm_wood",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Rear Sight",
        Category = "eft_pk_rs",
        Bone = "mod_sight_rear",
        Installed = "eft_rs_pk",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_pk"},
        Bone = "mod_stock",
        Pos = Vector(0, -3, -5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 35
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells556

SWEP.NoFireDuringSighting = true
SWEP.SightIsAlsoBipodAnims = true
SWEP.UnbipodOnLockAnims = true

SWEP.EFTshellsfunnytable = {
    ["empty_link_001"] = true,
    ["empty_link_002"] = true,
    ["empty_link_003"] = true,
    ["empty_link_004"] = true,
    ["empty_link_005"] = true,
    ["empty_link_006"] = true,
    ["empty_link_007"] = true,
    ["empty_link_008"] = true,
    ["empty_link_009"] = true,
    ["empty_link_010"] = true,
    ["empty_link_011"] = true,
    ["empty_link_012"] = true,
    ["empty_link_013"] = true,
    ["empty_link_014"] = true,
    ["empty_link_015"] = true,
    ["empty_link_016"] = true,
    ["empty_link_017"] = true,
    ["empty_link_018"] = true,
    ["empty_link_019"] = true,
    ["empty_link_020"] = true,
    ["empty_link_021"] = true,
    ["empty_link_022"] = true,
    ["empty_link_023"] = true,
    ["empty_link_024"] = true,
    ["empty_link_025"] = true,
}


SWEP.Hook_PrimaryAttack = function(swep)
    local gets = swep:GetEFTShootedRounds()
    if gets > math.random(20,25) then
        swep:SetEFTShootedRounds(0)
        swep:DropMagazine()
    else
        swep:SetEFTShootedRounds(gets + 1)
        -- swep:DropMagazine()
    end
end

SWEP.Hook_HideBones = function(swep, bons)
    if bons["mag_pkm_zid_pk_std_762x54r_100"] then return bons end -- hiding everything

    local gets = swep:GetEFTShootedRounds()
    
    for i = 1, 25 do 
        local funnynum = string.format("%03d", i)

        if i > gets then
            swep.EFTshellsfunnytable["empty_link_" .. funnynum] = true 
        else
            swep.EFTshellsfunnytable["empty_link_" .. funnynum] = false  
        end
    end
    return swep.EFTshellsfunnytable
end

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/belt_pkm_dropped.mdl"

SWEP.DropMagazineModelHook = function(swep, old)
    if swep:GetReloading() then
        return "models/weapons/arc9/darsu_eft/mods/mag_pkm_dropped.mdl"
    end
    return "models/weapons/arc9/darsu_eft/mods/belt_pkm_dropped.mdl"
end

local funnyvec = Vector(-100, 0, 0)
local funnyvec2 = Vector(-40, 30, 0)
SWEP.DropMagazineVelocityHook = function(swep, old)
    if swep:GetReloading() then return funnyvec end
    return funnyvec2
end

-- fake bipod
SWEP.Hook_ModifyBodygroups = function(swep, data)
    if data.elements["eft_pkm_bipod"] and swep:GetBipod() then
        if swep:GetEnterBipodTime() + 0.1 < CurTime() then
            data.model:SetBodygroup(5, 2)
        end
    end
end

-- ewww
DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    self:NetworkVar("Int", 11, "EFTShootedRounds")
    self:NetworkVar("Bool", 27, "EFTArmedDryfire")
    self:SetEFTShootedRounds(0)
    self:SetEFTArmedDryfire(true)
end