AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rpd")
SWEP.Description = ARC9:GetPhrase("eft_weapon_rpd_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_lmg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_lmg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_degtyaryov",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_762x39",
    ["eft_trivia_act3"] = "eft_trivia_act_gas",
    ["eft_trivia_country4"] = "eft_trivia_country_ussr",
    ["eft_trivia_year5"] = "1944"
}

SWEP.StandardPresets = {
    "[Short]XQAAAQBRAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD7+trSYi87zraD1RhdmrGhyPd4ycWvZjTrNJb1xySQwWqRsbAc+x/oM1S2Kf1ubFUEnuxyF/MXbD2rSEF2zZnujIJjgu7J4vPWU0FdKYtfq+79Cl08gZq/toRZClYvtWRc2LL6E0Xvf84psnMR2uG6eEiBM7f0kkla3g6F/iHOvmjzwoME",
    "[LL3 Barter]XQAAAQB/AQAAAAAAAAA9iIIiM7tuo1AtT00OeFD7+trSYi87zraD1RhdmrGhyPd4ycWvZjTrNJb1xySQwWqRsbAc+x/oM1S2Kf1ubFUEnuxyF/MXbD2rSEF2zZnujIJjgu7J4vPWWWztZ0QlPCLVgYlzKZ+GxHwY/zsm0Xhc2+bRUoWoTqhww3d8hB3h8DYA5NMpazuiY9b7R8zBwZwtmsnqG/ML34oeLZNXkwxt12B9Qdw="
}

SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_rpd.mdl"
SWEP.DefaultBodygroups = "00000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-8, 5.4, -5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -2), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.265, -5.35, 0.9),
    Ang = Angle(0, 0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.CustomizePos = Vector(21, 51, 5.5)
SWEP.CustomizeSnapshotFOV = 52
SWEP.CustomizeRotateAnchor = Vector(21, -4., -5.23)
SWEP.CustomizeSnapshotPos = Vector(0, 30, 0)

if GetConVar("arc9_eft_nontpik_mode"):GetBool() then
    SWEP.HoldType = "shotgun"
    SWEP.HoldTypeSprint = "passive"
    SWEP.HoldTypeHolstered = "passive"
    SWEP.HoldTypeSights = "rpg"
    SWEP.HoldTypeCustomize = "physgun"
end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 6.88 * ARC9.MOAToAcc
SWEP.RPM = 700
SWEP.EFTErgo = 35
SWEP.BarrelLength = 50
SWEP.Ammo = "ar2"
SWEP.Firemodes = { { Mode = -1} }

SWEP.Slot = 3
SWEP.ReloadInSights = false 

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 0.8 -- sideways recoil
SWEP.RecoilRandomUp   = 0.5 -- random up/down
SWEP.RecoilRandomSide = 1   -- random left/right

SWEP.RecoilAutoControl = 3.6 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.5 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.1   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.5   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.05   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 3 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.1 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(4.28-1.5, 19, -5.23 +3) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.75 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -2)
SWEP.SubtleVisualRecoil = 1.5
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1

------------------------- |||           Damage            ||| -------------------------

--          Damage
-- default ps
SWEP.DamageMax = 57/2
SWEP.DamageMin = 38.1/2
SWEP.PhysBulletMuzzleVelocity = 700 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      35 *2.54/100/0.0254
SWEP.PenetrationDelta = 52/100
SWEP.ArmorPiercing =    52/100
SWEP.RicochetChance =   35/100

SWEP.DamageLookupTable = {
    {   10/0.0254, 
    57/2     },

    {   100 /0.0254, 
    52.8/2     },

    {   200 /0.0254, 
    48.5/2     },

    {   300 /0.0254, 
    44.72/2     },

    {   400 /0.0254, 
    42.7/2     },

    {   500 /0.0254, 
    41.45/2     },

    {   600 /0.0254, 
    40.53/2     },

    {   700 /0.0254, 
    39.8/2     },

    {   800 /0.0254, 
    39.15/2     },

    {   900 /0.0254, 
    38.6/2     },

    {   1000 /0.0254, 
    38.1/2     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.Malfunction = false
SWEP.HeatCapacity = 250
SWEP.HeatDissipation = 1.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.3
SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x39.mdl"
SWEP.ShellSounds = ARC9EFT.Shells556

DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    self:NetworkVar("Int", "EFTShootedRounds")
    self:NetworkVar("Bool", "EFTArmedDryfire")
    self:SetEFTShootedRounds(0)
    self:SetEFTArmedDryfire(true)
end

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_rpd_n"] then
        return ARC9:GetPhrase("eft_weapon_rpdn")
    else
        return ARC9:GetPhrase("eft_weapon_rpd")
    end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_rpd_n"] then
        return ARC9:GetPhrase("eft_weapon_rpdn_desc")
    else
        return ARC9:GetPhrase("eft_weapon_rpd_desc")
    end
end

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/rpd/"
local path2 = ")weapons/darsu_eft/rpd/fire/"
local path4 = ")weapons/darsu_eft/pkm/"

SWEP.ShootSound = { path2 .. "rpd_outdoor_close_loop1.wav", path2 .. "rpd_outdoor_close_loop2.wav", path2 .. "rpd_outdoor_close_loop3.wav", path2 .. "rpd_outdoor_close_loop4.wav" }
SWEP.LayerSound = path2 .. "rpd_outdoor_close_loopt.wav"

SWEP.ShootSoundIndoor = { path2 .. "rpd_indoor_close_loop1.wav", path2 .. "rpd_indoor_close_loop2.wav", path2 .. "rpd_indoor_close_loop3.wav", path2 .. "rpd_indoor_close_loop4.wav" }
SWEP.LayerSoundIndoor = path2 .. "rpd_indoor_close_loopt.wav"

SWEP.DistantShootSound = { path2 .. "rpd_outdoor_distant_loop1.wav", path2 .. "rpd_outdoor_distant_loop2.wav" }
SWEP.DistantShootSoundIndoor = { path2 .. "rpd_indoor_distant_loop1.wav", path2 .. "rpd_indoor_distant_loop2.wav" }

SWEP.EnterSightsSound = ARC9EFT.ADSMachineGun
SWEP.ExitSightsSound = ARC9EFT.ADSMachineGun

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.65
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(180, 90, 0)
SWEP.DropMagazineVelocity = Vector(-40, 30, 0)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    -- [1] = "patron_in_weapon",
    [1] = "patron_001",
    [2] = "patron_002",
    [3] = "patron_003",
    [4] = "patron_004",
    [5] = "patron_005",
    [6] = "patron_006",
    [7] = "patron_007",
    [8] = "patron_008",
    [9] = "patron_009",
    [10] = "patron_010",
    [11] = "patron_011",
    [12] = "patron_012",
    [13] = "patron_013",
    [14] = "patron_014",
    [15] = "patron_015",
    [16] = "patron_016",
    [17] = "patron_017",
    [18] = "patron_018",
    [19] = "patron_019",
    [20] = "patron_020",
    [21] = "patron_021",
    [22] = "patron_022",
    [23] = "patron_023",
    [24] = "patron_024",
    [25] = "patron_025",

}

-- SWEP.SuppressEmptySuffix = true
SWEP.EFT_HasTacReloads = true


SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""
    local itsrpdn = elements["eft_rpd_n"]

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_rpd_mag_100"] then ending = 0
    else nomag = true end

    local empty = swep:Clip1() == 0
    
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
        if rand == 0 and itsrpdn then return "inspect0_n" end
        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(false) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            ending = rand
        end
        
        return anim .. ending .. (empty and "_empty" or "")
    elseif anim == "reload" or anim == "reload_empty" then
        local animla = anim .. ending .. (itsrpdn and "_n" or "")
        local timrr = swep:GetAnimationEntry(animla).MagSwapTime or 0

        timer.Simple(timrr, function()
            if IsValid(swep) and IsValid(swep:GetOwner()) and swep:GetReloading() then
                swep:SetEFTShootedRounds(0)
            end
        end)
        
        if swep.EFT_StartedTacReload then
            if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(0) end end) end
            animla = animla .. "_tactical"
        end

        return animla
    -- elseif anim == "fix" then
    --     rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
    --     -- rand = 2

    --     if SERVER then
    --         timer.Simple(1.5, function()
    --             if IsValid(swep) and IsValid(swep:GetOwner()) then
    --                 net.Start("arc9eftjam")
    --                 net.WriteUInt(rand, 3)
    --                 net.Send(swep:GetOwner())
    --             end
    --         end)
    --     end
    --     -- print("llaodfod", swep:GetBipod())
    --     return "jam" .. rand .. ((rand == 2 and itsrpdn) and "_n" or "") .. ((swep:GetInSights() or swep:GetBipod()) and "_sights" or "")
    elseif anim == "fire" then
        swep:SetEFTArmedDryfire(true)
    elseif anim == "dryfire" then
        if swep:GetEFTArmedDryfire() then
            swep:SetEFTArmedDryfire(false)
            return anim .. "_armed"
        end
    end
    
    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
    -- return anim
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mag_rpd_zid_rpd_762x39_100",
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
        "empty_link_026",
        "empty_link_027",
        "empty_link_028",
        "empty_link_029",
        "empty_link_030",
        "empty_link_031",
        "empty_link_032",
        "empty_link_033",
        "empty_link_034",
        "empty_link_035",
        "empty_link_036",
        "empty_link_037",
        "empty_link_038",
        "empty_link_039",
        "empty_link_040",
        "empty_link_041",
        "empty_link_042",
        "empty_link_043",
        "empty_link_044",
        "empty_link_045",
        "empty_link_046",
        "empty_link_047",
        "empty_link_048",
        "empty_link_049",
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

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local beltt = {path4 .. "pk_belt_1.wav",path4 .. "pk_belt_2.wav",path4 .. "pk_belt_3.wav",path4 .. "pk_belt_4.wav",path4 .. "pk_belt_5.wav",path4 .. "pk_belt_6.wav",path4 .. "pk_belt_7.wav",path4 .. "pk_belt_8.wav",path4 .. "pk_belt_9.wav" }

local alwayslhik = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local neverlhik = {
    { t = 0, lhik = 0 },
    { t = 1, lhik = 0 },
}  

local bipodpath = "weapons/darsu_eft/bipod/"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        IKTimeLine = alwayslhik,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        IKTimeLine = alwayslhik,
    },

    ["ready"] = {
        Source = {"ready_0","ready_1","ready_2"},
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "pk_gun_flip_5.ogg", t = 0.3 },
            { s = path .. "rpd_charge_out.ogg", t = 1.24 },
            { s = path .. "rpd_charge_full.ogg", t = 1.66 },
            { s = randspin, t = 3.05 },
        }
    },
    ["draw"] = {
        Source = "draw",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "pk_gun_flip_5.ogg", t = 0.4 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "pk_gun_flip_5.ogg", t = 0.4 },
        }
    },

    ["holster"] = {
        Source = "holster",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
        }
    },

    ["holster_empty"] = {
        Source = "holster_empty",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = {"fire_0", "fire_1", "fire_2"},
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "ash12_trigger_hammer.wav", t = 0 },
            { s = beltt, t = 0.05 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "ash12_trigger_hammer.wav", t = 0 },
            { s = beltt, t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "ash12_trigger_empty.wav", t = 0 },
        }
    },
    ["dryfire_armed"] = {
        Source = "fire_dry",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "pk_fire_dry_armed.ogg", t = 0 },
        }
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.93,
        MagSwapTime = 5,
        FireASAP = true,
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = path .. "rpd_dust_open.ogg", t = 0.55 },
            { s = randspin, t = 1.49 },
            { s = path4 .. "pk_belt_out.wav", t = 1.68 },
            { s = randspin, t = 2.28 },
            { s = path .. "rpd_mag_out.ogg", t = 2.4 },
            { s = randspin, t = 3.06 },
            { s = pouchin, t = 3.46 },
            { s = pouchout, t = 4.05 },
            { s = path .. "rpd_mag_in.ogg", t = 5.27 },
            { s = path4 .. "pk_belt_roll.wav", t = 6.39 },
            { s = path .. "rpd_dust_close2.ogg", t = 7.54 },
            { s = randspin, t = 8.45 },
        },
    },
    ["reload0_tactical"] = {
        Source = "reloadt",
        MinProgress = 0.93,
        MagSwapTime = 5,
        FireASAP = true,
        IKTimeLine = alwayslhik,
        DropMagAt = 4.25 - 1.8 - 4/25,
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "rpd_dust_open.ogg", t = 2.45 - 1.8 - 4/25 },
            { s = path .. "rpd_mag_out.ogg", t = 3.37 - 1.8- 4/25 },
            { s = path4 .. "pk_belt_out.wav", t = 3.8 - 1.8- 4/25 },
            { s = pouchout, t = 4.8 - 1.8- 4/25 },
            { s = randspin, t = 5.01 - 1.8- 4/25 },
            { s = path .. "rpd_mag_in.ogg", t = 5.96- 1.8 - 4/25 },
            { s = path4 .. "pk_belt_roll.wav", t = 7 - 1.8- 4/25 },
            { s = path .. "rpd_dust_close2.ogg", t = 8.15- 1.8 - 4/25 },
            { s = randspin, t = 9.18 - 1.8- 4/25 },
            
            {hide = 0, t = 0},
            {hide = 1, t = 4.25 - 1.8 - 4/25},
            {hide = 0, t = 4.8 - 1.8 - 4/25}
        },
    },
    ["reload0_n"] = {
        Source = "reload_n",
        MinProgress = 0.97,
        MagSwapTime = 5.2,
        FireASAP = true,
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "pk_gun_flip_5.ogg", t = 0.22 },
            { s = path .. "rpd_sight_button_in.ogg", t = 0.68 },
            { s = path .. "rpd_sight_mount_out.ogg", t = 0.84 },
            { s = path .. "rpd_sight_button_out.ogg", t = 1.05 },


            { s = randspin, t = 1.29 },
            { s = path .. "rpd_dust_open.ogg", t = 1.68 },
            { s = randspin, t = 2.43 },
            { s = path4 .. "pk_belt_out.wav", t = 2.8 },
            { s = path .. "rpd_mag_out.ogg", t = 3.5 },
            { s = randspin, t = 4.27 },
            { s = pouchin, t = 4.72 },
            { s = randspin, t = 5.64 },
            { s = pouchout, t = 5.25 },
            { s = path .. "rpd_mag_in.ogg", t = 6.52 },
            { s = path4 .. "pk_belt_roll.wav", t = 7.55 },
            { s = path .. "rpd_dust_close2.ogg", t = 8.7 },

            { s = path .. "rpd_gun_flip_5.ogg", t = 9.33 },
            { s = path .. "rpd_sight_mount_in.ogg", t = 9.51 },
            { s = path .. "rpd_sight_button_in.ogg", t = 9.96 },
            { s = path .. "rpd_sight_button_out.ogg", t = 10.05 },
            { s = randspin, t = 10.57 },
        },
    },
    ["reload0_n_tactical"] = {
        Source = "reload_nt",
        MinProgress = 0.97,
        MagSwapTime = 5.2,
        FireASAP = true,
        IKTimeLine = alwayslhik,
        DropMagAt = 5.35 - 1.8 - 4/25,
        EventTable = {
            { s = path .. "rpd_sight_button_in.ogg", t = 2.44- 1.8 - 4/25 },
            { s = path .. "rpd_sight_mount_out.ogg", t = 2.6- 1.8 - 4/25 },
            { s = path .. "rpd_sight_button_out.ogg", t = 2.75- 1.8 - 4/25 },
            { s = path .. "pk_gun_flip_5.ogg", t = 3- 1.8 - 4/25 },

            { s = path .. "rpd_dust_open.ogg", t = 3.4- 1.8 - 4/25 },
            { s = path .. "rpd_mag_out.ogg", t = 4.31- 1.8 - 4/25 },
            { s = path4 .. "pk_belt_out.wav", t = 4.75- 1.8 - 4/25 },
            { s = pouchout, t = 5.74- 1.8 - 4/25 },
            { s = randspin, t = 5.99- 1.8 - 4/25 },
            { s = path .. "rpd_mag_in.ogg", t = 6.95- 1.8 - 4/25 },
            { s = path4 .. "pk_belt_roll.wav", t = 7.93- 1.8 - 4/25 },
            { s = path .. "rpd_dust_close2.ogg", t = 9.1- 1.8 - 4/25 },
            
            { s = path .. "rpd_gun_flip_5.ogg", t = 9.71- 1.8 - 4/25 },
            { s = path .. "rpd_sight_mount_in.ogg", t = 10- 1.8 - 4/25 },
            { s = path .. "rpd_sight_button_in.ogg", t = 10.41- 1.8 - 4/25 },
            { s = path .. "rpd_sight_button_out.ogg", t = 10.5- 1.8 - 4/25 },
            { s = randspin, t = 10.98- 1.8 - 4/25 },
            
            {hide = 0, t = 0},
            {hide = 1, t = 5.35 - 1.8 - 4/25},
            {hide = 0, t = 5.7 - 1.8 - 4/25}
        },
    },
    

    ["reload_empty0"] = {
        Source = "reload_empty", 
        MinProgress = 0.97,
        MagSwapTime = 4.8,
        DropMagAt = 4.25,
        FireASAP = true,
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "rpd_charge_out.ogg", t = 0.38 },
            { s = path .. "rpd_charge_in.ogg", t = 0.87 },
            { s = randspin, t = 1.82 },
            { s = path .. "rpd_dust_open.ogg", t = 2.45 },
            { s = path .. "rpd_mag_out.ogg", t = 3.37 },
            { s = path4 .. "pk_belt_out.wav", t = 3.8 },
            { s = pouchout, t = 4.8 },
            { s = randspin, t = 5.01 },
            { s = path .. "rpd_mag_in.ogg", t = 5.96 },
            { s = path4 .. "pk_belt_roll.wav", t = 7 },
            { s = path .. "rpd_dust_close2.ogg", t = 8.15 },
            { s = randspin, t = 9.18 },
            
            {hide = 0, t = 0},
            {hide = 1, t = 4.25},
            {hide = 0, t = 4.8}
        },
    },
    ["reload_empty0_n"] = {
        Source = "reload_empty_n", 
        MinProgress = 0.97,
        MagSwapTime = 5.7,
        DropMagAt = 5.35,
        FireASAP = true,
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "rpd_charge_out.ogg", t = 0.38 },
            { s = path .. "rpd_charge_in.ogg", t = 0.87 },
            { s = randspin, t = 1.82 },

            { s = path .. "rpd_sight_button_in.ogg", t = 2.44 },
            { s = path .. "rpd_sight_mount_out.ogg", t = 2.6 },
            { s = path .. "rpd_sight_button_out.ogg", t = 2.75 },
            { s = path .. "pk_gun_flip_5.ogg", t = 3 },

            { s = path .. "rpd_dust_open.ogg", t = 3.4 },
            { s = path .. "rpd_mag_out.ogg", t = 4.31 },
            { s = path4 .. "pk_belt_out.wav", t = 4.75 },
            { s = pouchout, t = 5.74 },
            { s = randspin, t = 5.99 },
            { s = path .. "rpd_mag_in.ogg", t = 6.95 },
            { s = path4 .. "pk_belt_roll.wav", t = 7.93 },
            { s = path .. "rpd_dust_close2.ogg", t = 9.1 },
            
            { s = path .. "rpd_gun_flip_5.ogg", t = 9.71 },
            { s = path .. "rpd_sight_mount_in.ogg", t = 10 },
            { s = path .. "rpd_sight_button_in.ogg", t = 10.41 },
            { s = path .. "rpd_sight_button_out.ogg", t = 10.5 },
            { s = randspin, t = 10.98 },
            
            {hide = 0, t = 0},
            {hide = 1, t = 5.35},
            {hide = 0, t = 5.7}
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
    ["toggle_empty"] = {
        Source = "mod_switch",
        IKTimeLine = alwayslhik,
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch",
        IKTimeLine = alwayslhik,
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 0.33 },
            { s = randspin, t = 1.44 },
            { s = randspin, t = 2.83 },
        },
    },
    ["inspect1_empty"] = {
        Source = "look_empty",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 0.33 },
            { s = randspin, t = 1.44 },
            { s = randspin, t = 2.83 },
        },
    },

    ["inspect_mag_0"] = {
        Source = "magcheck",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0.05 },
            { s =  path .. "rpd_mag_check1.ogg", t = 0.73 },
            { s =  path .. "rpd_mag_check2.ogg", t = 1.72 },
            { s =  path4 .. "pk_belt_5.wav", t = 1.18 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 2.04 },
        },
    },
    ["inspect_mag_0_empty"] = {
        Source = "magcheck_empty",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0.05 },
            { s =  path .. "rpd_mag_check1.ogg", t = 0.73 },
            { s =  path .. "rpd_mag_check2.ogg", t = 1.72 },
            { s =  path4 .. "pk_belt_5.wav", t = 1.18 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 2.04 },
        },
    },

    ["inspect0"] = {
        Source = "check_chamber",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = path .. "pk_dust_open.ogg", t = 0.43 },
            { s = randspin, t = 0.95 },
            { s = path .. "rpd_dust_close1.ogg", t = 1.73 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 2.65 },
        },
    },
    ["inspect0_empty"] = {
        Source = "check_chamber_empty",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = path .. "pk_dust_open.ogg", t = 0.43 },
            { s = randspin, t = 0.95 },
            { s = path .. "rpd_dust_close1.ogg", t = 1.73 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 2.65 },
        },
    },
    ["inspect0_n"] = {
        Source = "check_chamber_n",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "pk_gun_flip_5.ogg", t = 0.1 },
            { s = path .. "rpd_sight_button_in.ogg", t = 0.38 },
            { s = path .. "rpd_sight_mount_out.ogg", t = 0.54 },
            { s = path .. "rpd_sight_button_out.ogg", t = 0.71 },


            { s = randspin, t = 0.87 },
            { s = path .. "pk_dust_open.ogg", t = 1.5 },
            { s = path .. "rpd_dust_close1.ogg", t = 2.77 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 3.73 },

            { s = path .. "rpd_sight_mount_in.ogg", t = 4.55 },
            { s = path .. "rpd_sight_button_in.ogg", t = 4.97 },
            { s = path .. "rpd_sight_button_out.ogg", t = 5.18 },
            { s = randspin, t = 5.5 },
        },
    },
    ["inspect0_n_empty"] = {
        Source = "check_chamber_empty_n",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "pk_gun_flip_5.ogg", t = 0.1 },
            { s = path .. "rpd_sight_button_in.ogg", t = 0.38 },
            { s = path .. "rpd_sight_mount_out.ogg", t = 0.54 },
            { s = path .. "rpd_sight_button_out.ogg", t = 0.71 },


            { s = randspin, t = 0.87 },
            { s = path .. "pk_dust_open.ogg", t = 1.5 },
            { s = path .. "rpd_dust_close1.ogg", t = 2.77 },
            { s =  path .. "pk_gun_flip_5.ogg", t = 3.73 },

            { s = path .. "rpd_sight_mount_in.ogg", t = 4.55 },
            { s = path .. "rpd_sight_button_in.ogg", t = 4.97 },
            { s = path .. "rpd_sight_button_out.ogg", t = 5.18 },
            { s = randspin, t = 5.5 },
        },
    },
    
    ["enter_bipod"] = {
        Source = "action",
        EventTable = {
            { s = { bipodpath .. "bipod_rpd_unfold_1.ogg", bipodpath .. "bipod_rpd_unfold_2.ogg", bipodpath .. "bipod_rpd_unfold_3.ogg" }, t = 0.0 },
            { s = { bipodpath .. "bipod_stand_on_1.ogg", bipodpath .. "bipod_stand_on_2.ogg", bipodpath .. "bipod_stand_on_3.ogg", bipodpath .. "bipod_stand_on_4.ogg", bipodpath .. "bipod_stand_on_5.ogg" }, t = 0.2 },
        }
    },
    ["enter_bipod_empty"] = {
        Source = "action_empty",
        EventTable = {
            { s = { bipodpath .. "bipod_rpd_unfold_1.ogg", bipodpath .. "bipod_rpd_unfold_2.ogg", bipodpath .. "bipod_rpd_unfold_3.ogg" }, t = 0.0 },
            { s = { bipodpath .. "bipod_stand_on_1.ogg", bipodpath .. "bipod_stand_on_2.ogg", bipodpath .. "bipod_stand_on_3.ogg", bipodpath .. "bipod_stand_on_4.ogg", bipodpath .. "bipod_stand_on_5.ogg" }, t = 0.2 },
        }
    },
    ["exit_bipod"] = {
        Source = "action",
        EventTable = {
            { s = { bipodpath .. "bipod_rpd_fold_1.ogg", bipodpath .. "bipod_rpd_fold_2.ogg", bipodpath .. "bipod_rpd_fold_3.ogg" }, t = 0.0 },
        }
    },
    ["exit_bipod_empty"] = {
        Source = "action_empty",
        EventTable = {
            { s = { bipodpath .. "bipod_rpd_fold_1.ogg", bipodpath .. "bipod_rpd_fold_2.ogg", bipodpath .. "bipod_rpd_fold_3.ogg" }, t = 0.0 },
        }
    },
}


------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBarrel", "HasGrip", "HasHG", "HasStock", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_rpd_n"] = { Bodygroups = { {1, 1} } },
    ["eft_rpd_mag_100"] = { Bodygroups = { {2, 1}, {3, 1} } },

    ["eft_rpd_barrel_520"] = { Bodygroups = { {4, 1} } },
    ["eft_rpd_barrel_350"] = { Bodygroups = { {4, 2} } },

    ["eft_rpd_muzzle"] = { Bodygroups = { {7, 1} } }, -- 2

    ["eft_rpd_bipod"] = { Bodygroups = { {5, 1} } },

    ["eft_rpd_rearsight"] = { Bodygroups = { {9, 1} } },
    ["eft_rpd_hg"] = { Bodygroups = { {6, 1} } },
    ["eft_rpd_stock"] = { Bodygroups = { {10, 1} } },

    ["eft_rpd_pg"] = { Bodygroups = { {8, 1} } },
}

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
    ["empty_link_026"] = true,
    ["empty_link_027"] = true,
    ["empty_link_028"] = true,
    ["empty_link_029"] = true,
    ["empty_link_030"] = true,
    ["empty_link_031"] = true,
    ["empty_link_032"] = true,
    ["empty_link_033"] = true,
    ["empty_link_034"] = true,
    ["empty_link_035"] = true,
    ["empty_link_036"] = true,
    ["empty_link_037"] = true,
    ["empty_link_038"] = true,
    ["empty_link_039"] = true,
    ["empty_link_040"] = true,
    ["empty_link_041"] = true,
    ["empty_link_042"] = true,
    ["empty_link_043"] = true,
    ["empty_link_044"] = true,
    ["empty_link_045"] = true,
    ["empty_link_046"] = true,
    ["empty_link_047"] = true,
    ["empty_link_048"] = true,
    ["empty_link_049"] = true,
}

SWEP.Hook_PrimaryAttack = function(swep)
    local gets = swep:GetEFTShootedRounds()
    if gets > math.random(40,49) then
        swep:SetEFTShootedRounds(0)
        swep:DropMagazine()
    else
        swep:SetEFTShootedRounds(gets + 1)
        -- swep:DropMagazine()
    end
end

SWEP.Hook_HideBones = function(swep, bons)
    if bons["mag_rpd_zid_rpd_762x39_100"] then return bons end -- hiding everything

    local gets = swep:GetEFTShootedRounds()
    
    for i = 1, 50 do 
        local funnynum = string.format("%03d", i)

        if i > gets then
            swep.EFTshellsfunnytable["empty_link_" .. funnynum] = true 
        else
            swep.EFTshellsfunnytable["empty_link_" .. funnynum] = false  
        end
    end
    return swep.EFTshellsfunnytable
end

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/belt_rpd_dropped.mdl"

SWEP.DropMagazineModelHook = function(swep, old)
    if swep:GetReloading() then
        return "models/weapons/arc9/darsu_eft/mods/mag_rpd_dropped2.mdl"
    end
    return "models/weapons/arc9/darsu_eft/mods/belt_rpd_dropped.mdl"
end

local funnyvec = Vector(0, -77, 0)
local funnyvec2 = Vector(30, 0, 0)
SWEP.DropMagazineVelocityHook = function(swep, old)
    if swep:GetReloading() then return funnyvec end
    return funnyvec2
end

SWEP.DynamicConditions = {
    ["Recoil"] = true,
    ["DropMagazineModel"] = true,
    ["DropMagazineVelocity"] = true,
}

-- fake bipod
SWEP.Hook_ModifyBodygroups = function(swep, data)
    local els = data.elements

    if els["eft_rpd_bipod"] and swep:GetBipod() then
        if swep:GetEnterBipodTime() + 0.1 < CurTime() then
            data.model:SetBodygroup(5, 2)
        end
    end

    if els["eft_rpd_barrel_350"] and els["eft_rpd_muzzle"] then
        data.model:SetBodygroup(7, 2)
    end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_rpd_barrel",
        Bone = "mod_barrel",
        Installed = "eft_rpd_barrel_520",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_rpd_muzzle"
            },
            {
                Installed = "eft_rpd_bipod"
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_rpd_mag",
        Bone = "mod_magazine",
        Installed = "eft_rpd_mag_100",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Bone = "mod_magazine",
        Category = "eft_ammo_76239",
        Installed = "eft_ammo_76239_ps",
        Integral = "eft_ammo_76239_ps",
        Pos = Vector(0, 0, -5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_dovetail"),
        Category = "eft_mount_dovetail",
        RejectAttachments = { ["eft_mount_dovetail_b13"] = true, ["eft_mount_dovetail_b13v"] = true, },
        Bone = "mod_scope",
        Pos = Vector(0.05, 2, .5),
        Ang = Angle(0, -90, 0),
        RequireElements = {"eft_rpd_n"},
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_rpd_handguard",
        Bone = "mod_handguard",
        Installed = "eft_rpd_hg",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_stock_rpd",
        Bone = "mod_stock",
        Installed = "eft_rpd_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_rpd_pg"
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_rpd_rs",
        Bone = "mod_sight_rear",
        Installed = "eft_rpd_rearsight",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_dovetail"),
        Category = "eft_rpd_conv",
        Bone = "mod_stock",
        Pos = Vector(0, 2, 0),
        Ang = Angle(0, 0, 0),
    },
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_rpd"},
        Bone = "mod_stock",
        Pos = Vector(0, -3, -5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}