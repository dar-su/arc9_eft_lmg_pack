AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_m60e4_alt")
SWEP.Description = ARC9:GetPhrase("eft_weapon_m60e4_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_lmg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_lmg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_usordnance",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_762x51",
    ["eft_trivia_act3"] = "eft_trivia_act_gas",
    ["eft_trivia_country4"] = "eft_trivia_country_usa",
    ["eft_trivia_year5"] = "1957"
}


SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m60.mdl"
SWEP.DefaultBodygroups = "00000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5.4, -7),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -2), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.22, -5.35, 0.25),
    Ang = Angle(0, 0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.CustomizePos = Vector(20, 48, 4.3)
SWEP.CustomizeSnapshotFOV = 55
SWEP.CustomizeRotateAnchor = Vector(20, -4.28, -5.23)
SWEP.CustomizeSnapshotPos = Vector(0, 25, 0)

if GetConVar("arc9_eft_nontpik_mode"):GetBool() then
    SWEP.HoldType = "shotgun"
    SWEP.HoldTypeSprint = "passive"
    SWEP.HoldTypeHolstered = "passive"
    SWEP.HoldTypeSights = "rpg"
    SWEP.HoldTypeCustomize = "physgun"
end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 6.88 * ARC9.MOAToAcc
SWEP.RPM = 550
SWEP.EFTErgo = 29
SWEP.BarrelLength = 50
SWEP.Ammo = "ar2"
SWEP.Firemodes = { { Mode = -1} }

SWEP.Slot = 3
SWEP.ReloadInSights = false 

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.1 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 0.8 -- sideways recoil
SWEP.RecoilRandomUp   = 0.65 -- random up/down
SWEP.RecoilRandomSide = 0.7   -- random left/right

SWEP.RecoilAutoControl = 4.5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.5 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.3   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.4   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.035   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 3 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 11 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.2 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 4 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.9 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -2)
SWEP.SubtleVisualRecoil = 1.5
SWEP.SubtleVisualRecoilDirection = 2.5
SWEP.SubtleVisualRecoilSpeed = 0.5

------------------------- |||           Damage            ||| -------------------------

SWEP.DamageMax = 88
SWEP.DamageMin = 60
SWEP.PhysBulletMuzzleVelocity = 840 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      31 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   20/100

SWEP.DamageLookupTable = {
    {   10/0.0254, 
    88     },

    {   100 /0.0254, 
    84     },

    {   200 /0.0254, 
    80.2     },

    {   300 /0.0254, 
    76.6     },

    {   400 /0.0254, 
    73     },

    {   500 /0.0254, 
    69     },

    {   600 /0.0254, 
    65.5     },

    {   700 /0.0254, 
    63.4     },

    {   800 /0.0254, 
    62     },

    {   900 /0.0254, 
    60.8     },

    {   1000 /0.0254, 
    60     },
}


------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 900
SWEP.MalfunctionMeanShotsToFailMultHot = 0.5
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.HeatCapacity = 250
SWEP.HeatDissipation = 1.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 1
SWEP.MuzzleParticle = "muzzleflash_m14"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x51.mdl"
SWEP.ShellSounds = ARC9EFT.Shells556

DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    -- self:NetworkVar("Int", "EFTShootedRounds")
    self:NetworkVar("Bool", "EFTArmedDryfire")
    -- self:SetEFTShootedRounds(0)
    self:SetEFTArmedDryfire(true)
end

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/arc9/darsu_eft/shells/m60_belt.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
}

SWEP.Hook_PrimaryAttack = function(self) -- belt link
    self:DoEject(1, 5)
end

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/m60/"
local path2 = ")weapons/darsu_eft/m60/fire/"
local path3 = ")weapons/darsu_eft/rpd/fire/"
local path4 = ")weapons/darsu_eft/pkm/"

SWEP.ShootSound = { path2 .. "m60_outdoor_close_loop1.wav", path2 .. "m60_outdoor_close_loop2.wav", path2 .. "m60_outdoor_close_loop3.wav", path2 .. "m60_outdoor_close_loop4.wav" }
SWEP.LayerSound = path2 .. "m60_outdoor_close_tail.wav"

SWEP.ShootSoundSilenced = { path2 .. "m60_outdoor_silenced_close_loop1.wav", path2 .. "m60_outdoor_silenced_close_loop2.wav", path2 .. "m60_outdoor_silenced_close_loop3.wav", path2 .. "m60_outdoor_silenced_close_loop4.wav" }
SWEP.LayerSoundSilenced = path2 .. "m60_outdoor_silenced_close_tail.wav"

SWEP.ShootSoundIndoor = { path2 .. "m60_indoor_close_loop1.wav", path2 .. "m60_indoor_close_loop2.wav", path2 .. "m60_indoor_close_loop3.wav", path2 .. "m60_indoor_close_loop4.wav" }
SWEP.LayerSoundIndoor = path2 .. "m60_indoor_close_tail.wav"

SWEP.ShootSoundSilencedIndoor = { path2 .. "m60_indoor_silenced_close_loop1.wav", path2 .. "m60_indoor_silenced_close_loop2.wav", path2 .. "m60_indoor_silenced_close_loop3.wav", path2 .. "m60_indoor_silenced_close_loop4.wav" }
SWEP.LayerSoundSilencedIndoor = path2 .. "m60_indoor_silenced_close_tail.wav"

SWEP.DistantShootSound = { path3 .. "rpd_outdoor_distant_loop1.wav", path3 .. "rpd_outdoor_distant_loop2.wav" }
SWEP.DistantShootSoundSilenced = { path2 .. "m60_outdoor_silenced_distant_loop1.wav", path2 .. "m60_outdoor_silenced_distant_loop2.wav" }
SWEP.DistantShootSoundIndoor = { path2 .. "m60_indoor_distant_loop1.wav", path2 .. "m60_indoor_distant_loop2.wav" }
SWEP.DistantShootSoundSilencedIndoor = { path2 .. "m60_indoor_silenced_distant_loop1.wav", path2 .. "m60_indoor_silenced_distant_loop2.wav" }

SWEP.EnterSightsSound = ARC9EFT.ADSMachineGun
SWEP.ExitSightsSound = ARC9EFT.ADSMachineGun

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineTime = 0.65
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(180, 90, 0)
SWEP.DropMagazineVelocity = Vector(40, -30, 0)

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

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_m60_mag_100"] then ending = 0
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
        local animla = anim .. ending
        -- local timrr = swep:GetAnimationEntry(animla).MagSwapTime or 0

        -- timer.Simple(timrr, function()
        --     if IsValid(swep) and IsValid(swep:GetOwner()) and swep:GetReloading() then
        --         swep:SetEFTShootedRounds(0)
        --     end
        -- end)
        
        if swep.EFT_StartedTacReload then
            if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(1) end end) end
            return "reload_tactical" .. ending
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
        "mag_m60_capco_m60e3_assault_box_762x51_100",
        "lid",
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

    ["ready"] = {
        Source = "ready",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "m60_gunflip_1.ogg", t = 0.3 },
            { s = path .. "m60_bolt_out.ogg", t = 1.69 },
            { s = path .. "m60_bolt_in.ogg", t = 2.01 },
            { s = path .. "m60_gunflip_2.ogg", t = 2.5 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.27, lhik = 0 },
            { t = 0.43, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["draw"] = {
        Source = "draw",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "m60_gunflip_3.ogg", t = 0.4 },
        }
    },

    ["holster"] = {
        Source = "holster",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
            { s = path .. "m60_gunflip_1.ogg", t = 0.1 },
        }
    },


    ["fire"] = {
        Source = "fire",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "ash12_trigger_hammer.wav", t = 0 },
            { s = beltt, t = 0.05 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_end",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "ash12_trigger_hammer.wav", t = 0 },
            { s = beltt, t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "idle",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "ash12_trigger_empty.wav", t = 0 },
        }
    },
    ["dryfire_armed"] = {
        Source = "idle",
        IKTimeLine = alwayslhik,
        EventTable = {
            { s = path .. "pk_fire_dry_armed.ogg", t = 0 },
        }
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.93,
        MagSwapTime = 3.25,
        FireASAP = true,
        -- IKTimeLine = alwayslhik,
        EventTable = {
            { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
            { s = path .. "m60_dust_open.ogg", t = 0.93 - 0.3 },
            { s = path4 .. "pk_belt_roll.wav", t = 1.6 },
            { s = path .. "m60_mag_out.ogg", t = 2.45 },
            { s = randspin, t = 2.8 },
            { s = pouchin, t = 2.9 },
            { s = pouchout, t = 3.5 },
            { s = randspin, t = 3.57 },
            { s = path .. "m60_mag_in.ogg", t = 4.12 },
            { s = path .. "m60_belt_setup.wav", t = 4.8 },
            { s = beltt, t = 5.1 },
            { s = path .. "m60_close_cover.ogg", t = 7.0 - 0.2 },
            { s =  path .. "m60_gunflip_3.ogg", t = 7.7 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.07, lhik = 0 },
            { t = 0.87, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_tactical0"] = {
        Source = "reloadt",
        MinProgress = 0.93,
        MagSwapTime = 3.25,
        FireASAP = true,
        -- IKTimeLine = alwayslhik,
        DropMagAt = 2.6- 4/25,
        EventTable = {
            { s =  path .. "m60_gunflip_1.ogg", t = 0.1 - 4/25 },
            { s = path .. "m60_dust_open.ogg", t = 0.86 - 0.3 - 4/25 },
            { s = path .. "m60_mag_out_fast.ogg", t = 1.48 - 4/25 },
            { s = path .. "m60_gunflip_2.ogg", t = 2.3 - 4/25 },
            { s = pouchout, t = 2.85 - 4/25 },
            { s = randspin, t = 2.93 - 4/25 },
            { s = path .. "m60_mag_in.ogg", t = 3.58 - 4/25 },
            { s = path .. "m60_belt_setup.wav", t = 4.54 - 0.38 - 4/25 },
            { s = beltt, t = 4.5 - 4/25 },
            { s = path .. "m60_close_cover.ogg", t = 6.39 - 0.2 - 4/25 },
            { s = randspin, t = 7 - 4/25 },
            {hide = 0, t = 0},
            {hide = 1, t = 2.6- 4/25},
            {hide = 0, t = 2.9- 4/25}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.07, lhik = 0 },
            { t = 0.87, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty0"] = {
        Source = "reload_empty", 
        MinProgress = 0.97,
        MagSwapTime = 2.85,
        DropMagAt = 2.6,
        FireASAP = true,
        -- IKTimeLine = alwayslhik,
        EventTable = {
            { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
            { s = path .. "m60_dust_open.ogg", t = 0.86 - 0.3 },
            { s = path .. "m60_mag_out_fast.ogg", t = 1.48 },
            { s = path .. "m60_gunflip_2.ogg", t = 2.3 },
            { s = pouchout, t = 2.85 },
            { s = randspin, t = 2.93 },
            { s = path .. "m60_mag_in.ogg", t = 3.58 },
            { s = path .. "m60_belt_setup.wav", t = 4.54 - 0.38 },
            { s = beltt, t = 4.5 },
            { s = path .. "m60_close_cover.ogg", t = 6.39 - 0.2 },
            { s = randspin, t = 7 },
            { s =  path .. "m60_bolt_out.ogg", t = 7.65 },
            { s =  path .. "m60_bolt_in.ogg", t = 8 },
            { s =  path .. "m60_gunflip_3.ogg", t = 8.57 },
            
            {hide = 0, t = 0},
            {hide = 1, t = 2.6},
            {hide = 0, t = 2.9}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.06, lhik = 0 },
            { t = 0.74, lhik = 0 },
            { t = 0.79, lhik = 1 },
            { t = 1, lhik = 1 },
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



    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            -- { s = randspin, t = 0 },
            { s =  beltt, t = 0.3 },
            { s =  path .. "m60_gunflip_1.ogg", t = 0.25 },
            { s =  beltt, t = 2.0 },
            { s =  path .. "m60_gunflip_2.ogg", t = 2.1 },
            { s =  beltt, t = 3.64 },
            { s =  path .. "m60_gunflip_3.ogg", t = 3.7 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.48, lhik = 1 },
            { t = 0.7, lhik = 0 },
            { t = 0.81, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["inspect1_empty"] = {
        Source = "look",
        EventTable = {
            -- { s = randspin, t = 0 },
            { s =  path .. "m60_gunflip_1.ogg", t = 0.25 },
            { s =  path .. "m60_gunflip_2.ogg", t = 2.1 },
            { s =  path .. "m60_gunflip_3.ogg", t = 3.7 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.48, lhik = 1 },
            { t = 0.7, lhik = 0 },
            { t = 0.81, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect_mag_0"] = {
        Source = "magcheck",
        EventTable = {
            { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
            { s =  path .. "m60_mag_check.ogg", t = 0.59 },
            { s =  beltt, t = 0.89 },
            { s =  path .. "m60_gunflip_3.ogg", t = 2.35 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
            { s = path .. "m60_dust_open.ogg", t = 0.83 - 0.3 },
            { s = path .. "pk_gun_flip_5.ogg", t = 1.74 },
            { s =  beltt, t = 1.7 },
            { s = path .. "rpd_mag_check2.ogg", t = 2.51, v = 0.3 },
            { s = path .. "m60_close_cover.ogg", t = 3.04 - 0.2 },
            { s =  path .. "m60_gunflip_3.ogg", t = 3.56 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.11, lhik = 0 },
            { t = 0.74, lhik = 0 },
            { t = 0.84, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["inspect0_empty"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
            { s = path .. "m60_dust_open.ogg", t = 1.03 - 0.3 },
            { s =  path .. "m60_gunflip_2.ogg", t = 1.4 },
            { s = path .. "m60_close_cover.ogg", t = 2.83 - 0.2 },
            { s =  path .. "m60_gunflip_3.ogg", t = 3.37 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.11, lhik = 0 },
            { t = 0.73, lhik = 0 },
            { t = 0.85, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    
    ["enter_bipod"] = {
        Source = "action",
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
}


------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBarrel", "HasHG", "HasTrigger", "HasGrip", "HasStock", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_e6"] = { Bodygroups = { {1, 1} } },
    ["eft_m60_e6fde"] = { Skin = 1 },

    ["eft_m60_barrel_e4_458"] = { Bodygroups = { {4, 1} } },
    ["eft_m60_barrel_e4_475"] = { Bodygroups = { {4, 3} } },
    ["eft_m60_barrel_e6_458"] = { Bodygroups = { {4, 2} } },
    ["eft_m60_barrel_e3_584"] = { Bodygroups = { {4, 4} } },

    ["eft_m60_hg_e4"] = { Bodygroups = { {6, 1} } },
    ["eft_m60_hg_e4_fde"] = { Bodygroups = { {6, 2} } },
    ["eft_m60_hg_e6"] = { Bodygroups = { {6, 3} } },

    ["eft_m60_stock_e4"] = { Bodygroups = { {10, 1} } },
    ["eft_m60_stock_e6"] = { Bodygroups = { {10, 2} } },
    ["eft_m60_stock_e6_fde"] = { Bodygroups = { {10, 3} } },

    ["eft_m60_rearsight"] = { Bodygroups = { {9, 1} } },
    ["eft_m60_mag_100"] = { Bodygroups = { {2, 1}, {3, 1}, {11, 1} } },
    ["eft_m60_bipod"] = { Bodygroups = { {5, 1} } },

    ["eft_m60_trigger_e4"] = { Bodygroups = { {7, 1} } },
    ["eft_m60_trigger_e6"] = { Bodygroups = { {7, 2} } },
    ["eft_m60_trigger_e6_fde"] = { Bodygroups = { {7, 3} } },
    ["eft_m60_pg_e4"] = { Bodygroups = { {8, 1} } },
    ["eft_m60_pg_e6"] = { Bodygroups = { {8, 2} } },
    ["eft_m60_pg_e6_fde"] = { Bodygroups = { {8, 3} } },
}

-- fake bipod
SWEP.Hook_ModifyBodygroups = function(swep, data)
    local els = data.elements

    if els["eft_m60_bipod"] and swep:GetBipod() then
        if swep:GetEnterBipodTime() + 0.1 < CurTime() then
            data.model:SetBodygroup(5, 2)
        end
    end
    
    if els["eft_m60_rearsight"] then
        data.model:SetBodygroup(9, swep:GetValue("FoldSights") and 2 or 1)
    else
        data.model:SetBodygroup(9, 0)
    end
end

SWEP.ExtraSightDistanceNoRT = true

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Bone = "mod_scope",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_optic_large"},
        ExcludeElements = {"IronsBlockingSight"},
        -- ExtraSightDistance = -3.5, -- something wrong with acogs???
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_m60_barrel",
        Bone = "mod_barrel",
        Installed = "eft_m60_barrel_e4_458",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_m60_muzzle_e3"
            },
            {
                Installed = "eft_m60_fs_e4"
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_m60_mag",
        Bone = "mod_magazine",
        Installed = "eft_m60_mag_100",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_762x51",
        Integral = true,
        Installed = "eft_ammo_762x51_bpzfmj",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(3, 0, -4),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_m60_handguard",
        Bone = "mod_handguard",
        Installed = "eft_m60_hg_e4",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_stock_m60",
        Bone = "mod_stock",
        Installed = "eft_m60_stock_e4",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_trigger"),
        Category = "eft_trigger_m60",
        Bone = "mod_pistolgrip_000",
        Installed = "eft_m60_trigger_e4",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_m60_pg_e4"
            },
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_m60_rs",
        Bone = "mod_sight_rear",
        Installed = "eft_m60_rearsight",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_bipod"),
        Category = "eft_bipod_m60",
        Bone = "mod_bipod",
        Installed = "eft_m60_bipod",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_m60"},
        Bone = "mod_stock",
        Pos = Vector(0, -3, -5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}