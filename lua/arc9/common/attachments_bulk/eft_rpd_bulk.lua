local ATT = {}


///////////////////////////////////////      eft_rpd_barrel_520

ATT = {}

ATT.PrintName = "RPD 7.62x39 520mm barrel"
ATT.CompactName = "RPD 520mm"
ATT.Icon = Material("entities/eft_rpd_attachments/520.png", "mips smooth")
ATT.Description = [[A standard-issue 520mm barrel for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasBarrel = true 

ATT.SpreadOverride = 1.31 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_barrel"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_muzzle_rpd",
        Pos = Vector(0, 21, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_bipod"),
        Category = "eft_bipod_rpd",
        Pos = Vector(0, 18, 1),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -32,
    recoilModifier = -9.4,
    weight = 1.8,
}))


-- EFT ID: 6513eff1e06849f06c0957d4
ARC9.LoadAttachment(ATT, "eft_rpd_barrel_520")

///////////////////////////////////////      eft_rpd_barrel_350

ATT = {}

ATT.PrintName = "RPD 7.62x39 sawed-off 350mm barrel"
ATT.CompactName = "RPD 350mm"
ATT.Icon = Material("entities/eft_rpd_attachments/350.png", "mips smooth")
ATT.Description = [[A 350mm barrel shortened by an unknown artisan for the RPD machine gun.]]

ATT.HasBarrel = true 

ATT.SpreadOverride = 2.13 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_barrel"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_muzzle_rpd",
        Pos = Vector(0, 14, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -14,
    recoilModifier = -6.3,
    weight = 1.1,
    velocity = -8,
}))


-- EFT ID: 65266fd43341ed9aa903dd56
ARC9.LoadAttachment(ATT, "eft_rpd_barrel_350")

///////////////////////////////////////      eft_rpd_muzzle

ATT = {}

ATT.PrintName = "RPD barrel thread protector"
ATT.CompactName = "RPD thr."
ATT.Icon = Material("entities/eft_rpd_attachments/mz.png", "mips smooth")
ATT.Description = [[A standard-issue barrel thread protector for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_muzzle_rpd"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.01,
}))


-- EFT ID: 6513f0f5e63f29908d0ffab8
ARC9.LoadAttachment(ATT, "eft_rpd_muzzle")

///////////////////////////////////////      eft_rpd_bipod

ATT = {}

ATT.PrintName = "RPD bipod"
ATT.CompactName = "RPD bipod"
ATT.Icon = Material("entities/eft_rpd_attachments/b.png", "mips smooth")
ATT.Description = [[A standard-issue bipod for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.

A bit improvised version of EFT bipods, does not need manual unfolding.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Bipod = true 
ATT.RecoilMultBipod = 0.33
ATT.VisualRecoilMultBipod = 0.33
ATT.VisualRecoilSpringPunchDampingMultBipod = 3
ATT.HoldBreathTimeMultBipod = 30
ATT.SwayMultBipod = 0.1

ATT.Category = {"eft_bipod_rpd"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -8,
    weight = 0.455,
}))


-- EFT ID: 6513f037e06849f06c0957d7
ARC9.LoadAttachment(ATT, "eft_rpd_bipod")


///////////////////////////////////////      eft_rpd_rearsight

ATT = {}

ATT.PrintName = "RPD rear sight"
ATT.CompactName = "RPD RS"
ATT.Icon = Material("entities/eft_rpd_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_rs"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.025,
}))


-- EFT ID: 6513f153e63f29908d0ffaba
ARC9.LoadAttachment(ATT, "eft_rpd_rearsight")

///////////////////////////////////////      eft_rpd_hg

ATT = {}

ATT.PrintName = "RPD wooden handguard"
ATT.CompactName = "RPD wood"
ATT.Icon = Material("entities/eft_rpd_attachments/hg.png", "mips smooth")
ATT.Description = [[A standard-issue wooden handguard for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasHG = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_handguard"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.25,
}))


-- EFT ID: 6513f05a94c72326990a3866
ARC9.LoadAttachment(ATT, "eft_rpd_hg")


///////////////////////////////////////      eft_rpd_stock

ATT = {}

ATT.PrintName = "RPD wooden stock"
ATT.CompactName = "RPD wood"
ATT.Icon = Material("entities/eft_rpd_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue wooden stock for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasStock = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stock_rpd"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Category = "eft_pg_rpd",
        Pos = Vector(0, 0, 3),
        Ang = Angle(0, -90, 0),
    },
}
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 16,
    recoilModifier = -22,
    weight = 1.12,
}))


-- EFT ID: 6513f1798cb24472490ee331
ARC9.LoadAttachment(ATT, "eft_rpd_stock")

///////////////////////////////////////      eft_rpd_pg

ATT = {}

ATT.PrintName = "RPD wooden pistol grip"
ATT.CompactName = "RPD PG"
ATT.Icon = Material("entities/eft_rpd_attachments/pg.png", "mips smooth")
ATT.Description = [[A standard-issue wooden pistol grip for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_pg_rpd"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.06,
}))


-- EFT ID: 6513f13a8cb24472490ee32f
ARC9.LoadAttachment(ATT, "eft_rpd_pg")

///////////////////////////////////////      eft_rpd_mag_100

ATT = {}

ATT.PrintName = "RPD 7.62x39 \"Buben\" 100-round box"
ATT.CompactName = "Buben"
ATT.Icon = Material("entities/eft_rpd_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard-issue 100-round box for the RPD machine gun nicknamed "Buben" for its round shape. Manufactured by V.A. Degtyarev Plant.]]

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_rpd_promag_opfor.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_mag"}

ATT.HasMag = true

ATT.ClipSize = 100
-- ATT.ChamberSize = 1

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -6,
    weight = 0.8,
    malfunctionChance = 0.01,
}))


-- EFT ID: 6513f0a194c72326990a3868
ARC9.LoadAttachment(ATT, "eft_rpd_mag_100")

///////////////////////////////////////      eft_rpd_n

ATT = {}

ATT.PrintName = "RPDN"
ATT.CompactName = "RPDN"
ATT.Icon = Material("entities/eft_rpd_attachments/rpdn.png", "mips smooth")
ATT.Description = [[The RPDN variant is equipped with a hinged dovetail mount for installing optics.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1

ATT.Category = {"eft_rpd_conv"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.1,
}))

-- EFT ID: NO
ARC9.LoadAttachment(ATT, "eft_rpd_n")





///////////////////////////////////////      eft_rpd_barrel_370

ATT = {}

ATT.PrintName = "RPD 7.62x39 DS Arms 370mm barrel"
ATT.CompactName = "RPD 370mm"
ATT.Icon = Material("entities/eft_attachments/6830601984a12bb973021fc2.png", "mips smooth")
ATT.Description = "A 370mm barrel for the RPD machine gun, custom threaded for .308/7.62x51 muzzle devices."

ATT.HasBarrel = true 

ATT.SpreadOverride = 1.89 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_barrel"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_muzzle_ar10", "eft_muzzle_rpd2"},
        Pos = Vector(0, 14, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -16,
    recoilModifier = -6.7,
    weight = 1.1,
    velocity = -7,
}))
-- EFT ID: 6830601984a12bb973021fc2
ARC9.LoadAttachment(ATT, "eft_rpd_barrel_370")


///////////////////////////////////////      eft_rpd_muzzle_ds

ATT = {}

ATT.PrintName = "RPD 7.62x51 DS Arms Belgian Style Muzzle Brake"
ATT.CompactName = "RPD BEL"
ATT.Icon = Material("entities/eft_attachments/6830606e84a12bb973021fd0.png", "mips smooth")
ATT.Description = "A Belgian type muzzle brake for the custom threaded .308 barrel for the RPD machine gun. Manufactured by DS Arms."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_muzzle_rpd2"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2.5,
    recoilModifier = -12,
    accuracyModifier = 3,
    weight = 0.064,
}))
-- EFT ID: 6830606e84a12bb973021fd0
ARC9.LoadAttachment(ATT, "eft_rpd_muzzle_ds")

///////////////////////////////////////      eft_rpd_hg_ds

ATT = {}

ATT.PrintName = "RPD DS Arms Railed Handguard"
ATT.CompactName = "DSA RPD"
ATT.Icon = Material("entities/eft_attachments/68305fdc84a12bb973021fc0.png", "mips smooth")
ATT.Description = "A polymer railed handguard for the RPD machine gun. Manufactured by DS Arms."

ATT.HasHG = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_handguard"}
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_medium", "eft_optic_small"},
        Pos = Vector(-0.3, 0, -2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 4,
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 0, 1.38),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(0, 1.2, -0.7),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0.2),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.25,
}))
-- EFT ID: 68305fdc84a12bb973021fc0
ARC9.LoadAttachment(ATT, "eft_rpd_hg_ds")


///////////////////////////////////////      eft_rpd_stock_ds

ATT = {}

ATT.PrintName = "RPD DS Arms buttstock"
ATT.CompactName = "DSA RPD"
ATT.Icon = Material("entities/eft_attachments/683060403b1bb49282023611.png", "mips smooth")
ATT.Description = "A polymer buttstock for the RPD machine gun. Manufactured by DS Arms."

ATT.HasStock = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stock_rpd"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Category = "eft_sa58_pgrip",
        Pos = Vector(0, 0, 3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_buffertube"),
        Category = {"eft_ar15_buffertube", "eft_hk416_buffertube", "eft_ar15_buffertube_notbuffer"},
        Pos = Vector(0.95, 0, 0.55),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0.5),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 1.12,
}))
-- EFT ID: 683060403b1bb49282023611
ARC9.LoadAttachment(ATT, "eft_rpd_stock_ds")