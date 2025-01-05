local ATT = {}

///////////////////////////////////////      eft_barrel_pkm

ATT = {}

ATT.PrintName = "PKM 7.62x54R 658mm barrel"
ATT.CompactName = "PKM 658mm"
ATT.Icon = Material("entities/eft_pkm_attachments/658.png", "mips smooth")
ATT.Description = [[A standard-issue 658mm barrel for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -11
ATT.CustomCons = { Ergonomics = "-11" }
ATT.VisualRecoilMult = 0.93
ATT.RecoilMult = 0.93
ATT.Spread = 1.03 * ARC9.MOAToAcc
ATT.HeatCapacityMult = 1.14
ATT.HeatDissipationMult = 1.09

ATT.Category = {"eft_pk_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_pkm_muzzle"},
        Pos = Vector(0, 23, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_pkm")

///////////////////////////////////////      eft_barrel_pkp

ATT = {}

ATT.PrintName = "PKP 7.62x54R 658mm barrel"
ATT.CompactName = "PKP 658mm"
ATT.Icon = Material("entities/eft_pkm_attachments/658p.png", "mips smooth")
ATT.Description = [[A standard-issue 658mm barrel for PKP "Pecheneg" with a built-in muzzle brake. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -8.5
ATT.CustomCons = { Ergonomics = "-8.5" }
ATT.VisualRecoilMult = 0.915
ATT.RecoilMult = 0.915
ATT.Spread = 0.96 * ARC9.MOAToAcc
ATT.HeatCapacityMult = 1.22
ATT.HeatDissipationMult = 1.12

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pkp_barrel_lhik.mdl"
ATT.LHIK = true

ATT.Category = {"eft_pk_barrel"}

ARC9.LoadAttachment(ATT, "eft_barrel_pkp")


///////////////////////////////////////      eft_muzzle_pkm_dtk1p

ATT = {}

ATT.PrintName = "PK Zenit DTK-1P 7.62x54R muzzle brake"
ATT.CompactName = "DTK-1P"
ATT.Icon = Material("entities/eft_pkm_attachments/ze.png", "mips smooth")
ATT.Description = [[The DTK-1P muzzle brake, designed for installation on PK, PKM, and PKP machine guns. Manufactured by Zenit.]]

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.HeatCapacityMult = 1.013

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pkm_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_pkm_dtk1p")

///////////////////////////////////////      eft_muzzle_pkm_fh

ATT = {}

ATT.PrintName = "PKM 7.62x54R slotted flash hider"
ATT.CompactName = "PKM"
ATT.Icon = Material("entities/eft_pkm_attachments/fh.png", "mips smooth")
ATT.Description = [[A standard-issue flash hider for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.EFTErgoAdd = -1.5
ATT.CustomCons = { Ergonomics = "-1.5" }
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pkm_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_pkm_fh")

///////////////////////////////////////      eft_muzzle_pkm_mb

ATT = {}

ATT.PrintName = "PKM 7.62x54R muzzle brake"
ATT.CompactName = "PKM"
ATT.Icon = Material("entities/eft_pkm_attachments/mb.png", "mips smooth")
ATT.Description = [[A standard-issue muzzle brake-compensator for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.HeatCapacityMult = 1.01
ATT.SpreadMult = 0.99

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pkm_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_pkm_mb")

///////////////////////////////////////      eft_pkm_mag_100

ATT = {}

ATT.PrintName = "PK 7.62x54R 100-round box"
ATT.CompactName = "PK"
ATT.Icon = Material("entities/eft_pkm_attachments/100.png", "mips smooth")
ATT.Description = [[A standard-issue 100-round ammunition box for 7.62x54R ammo for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_pkm_dropped.mdl"

ATT.ChamberSize = 1
ATT.ClipSize = 100

ATT.EFTErgoAdd = -30
ATT.CustomCons = { Ergonomics = "-30" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.Category = {"eft_mag_pkm"}

ARC9.LoadAttachment(ATT, "eft_pkm_mag_100")

///////////////////////////////////////      eft_pkm_bipod

ATT = {}

ATT.PrintName = "PK bipod"
ATT.CompactName = "PK bipod"
ATT.Icon = Material("entities/eft_pkm_attachments/bipod.png", "mips smooth")
ATT.Description = [[A standard-issue bipod for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.

A bit improvised version of EFT bipods, does not need manual unfolding.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.Bipod = true 
ATT.RecoilMultBipod = 0.33
ATT.VisualRecoilMultBipod = 0.33
ATT.VisualRecoilSpringPunchDampingMultBipod = 3
ATT.HoldBreathTimeMultBipod = 30
ATT.SwayMultBipod = 0.1


ATT.Category = {"eft_bipod_pkm"}

ARC9.LoadAttachment(ATT, "eft_pkm_bipod")


///////////////////////////////////////      eft_hg_pk_zenit

ATT = {}

ATT.PrintName = "PK Zenit B-50 handguard"
ATT.CompactName = "B-50"
ATT.Icon = Material("entities/eft_pkm_attachments/hgz.png", "mips smooth")
ATT.Description = [[The B-50 integrally-machined handguard made of D16T alloy for Kalashnikov Machine gun. Allows installation of additional equipment and handgrips. Manufactured by Zenit.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.HeatCapacityMult = 0.97
ATT.HeatDissipationMult = 0.975

ATT.Category = {"eft_pk_hg"}

ATT.Attachments = {
    {
        PrintName = "Foregrip",
        Category = {"eft_foregrip_b25u"},
        Pos = Vector(-2, 0, 1.03),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mount",
        Category = {"eft_b50_mount"},
        Pos = Vector(-2, 0, -1),
        Ang = Angle(0, 0, 0),
    },

    {
        PrintName = "L Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-5.75, -1.07, -0.7),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-5.75, 1.07, -0.7),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_hg_pk_zenit")

///////////////////////////////////////      eft_mount_b50_66

ATT = {}

ATT.PrintName = "PK Zenit B-50 66mm top mount"
ATT.CompactName = "B50 66"
ATT.Icon = Material("entities/eft_pkm_attachments/66.png", "mips smooth")
ATT.Description = [[The B-50 66mm mount for Kalashnikov Machine gun. Features a Weaver rail for installation of various scopes. Manufactured by Zenit.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Category = {"eft_b50_mount"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_tactical", "eft_tactical_top"},
        Pos = Vector(-0.2, 0, -3.1),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = 8,
    },
}


ARC9.LoadAttachment(ATT, "eft_mount_b50_66")

///////////////////////////////////////      eft_mount_b50_16

ATT = {}

ATT.PrintName = "PK Zenit B-50 16mm top mount"
ATT.CompactName = "B50 16"
ATT.Icon = Material("entities/eft_pkm_attachments/16.png", "mips smooth")
ATT.Description = [[The B-50 16mm mount for Kalashnikov Machine gun. Features a Weaver rail for installation of various scopes. Manufactured by Zenit.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_b50_mount"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_tactical", "eft_tactical_top"},
        Pos = Vector(-0.2, 0, -1.1),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = 8,
    },
}

ATT.ExcludeElements = {"eft_barrel_pkp" }

ARC9.LoadAttachment(ATT, "eft_mount_b50_16")

///////////////////////////////////////      eft_pg_pk

ATT = {}

ATT.PrintName = "PK pistol grip"
ATT.CompactName = "PK"
ATT.Icon = Material("entities/eft_pkm_attachments/pg.png", "mips smooth")
ATT.Description = [[A standard-issue pistol grip for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pk_pg"}

ARC9.LoadAttachment(ATT, "eft_pg_pk")

///////////////////////////////////////      eft_pg_pkb

ATT = {}

ATT.PrintName = "PK pistol grip (Black)"
ATT.CompactName = "PK (B)"
ATT.Icon = Material("entities/eft_pkm_attachments/pgb.png", "mips smooth")
ATT.Description = [[A standard-issue black pistol grip for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasGrip = true

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pk_pg"}

ARC9.LoadAttachment(ATT, "eft_pg_pkb")

///////////////////////////////////////      eft_rs_pk

ATT = {}

ATT.PrintName = "PK rear sight"
ATT.CompactName = "PK RS"
ATT.Icon = Material("entities/eft_pkm_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pk_rs"}

ARC9.LoadAttachment(ATT, "eft_rs_pk")

///////////////////////////////////////      eft_stock_pkm_wood

ATT = {}

ATT.PrintName = "PKM wooden stock"
ATT.CompactName = "PKM"
ATT.Icon = Material("entities/eft_pkm_attachments/w.png", "mips smooth")
ATT.Description = [[A standard-issue wooden stock for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.VisualRecoilMult = 0.72
ATT.RecoilMult = 0.72

ATT.Category = {"eft_pk_stock"}

ARC9.LoadAttachment(ATT, "eft_stock_pkm_wood")

///////////////////////////////////////      eft_stock_pkm_pl

ATT = {}

ATT.PrintName = "PKP polymer stock"
ATT.CompactName = "PKP"
ATT.Icon = Material("entities/eft_pkm_attachments/p.png", "mips smooth")
ATT.Description = [[A standard-issue stock for PKP "Pecheneg" machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 4.5
ATT.CustomPros = { Ergonomics = "+4.5" }
ATT.VisualRecoilMult = 0.71
ATT.RecoilMult = 0.71

ATT.Category = {"eft_pk_stock"}

ARC9.LoadAttachment(ATT, "eft_stock_pkm_pl")

///////////////////////////////////////      eft_stock_pkm_zenit

ATT = {}

ATT.PrintName = "PK Zenit PT-2 \"Klassika\" stock"
ATT.CompactName = "PT-2"
ATT.Icon = Material("entities/eft_pkm_attachments/z.png", "mips smooth")
ATT.Description = [[The PT-2 telescopic stock made of aluminum alloy D16T replaces the standard PK stock, has a length adjustment mechanism and height adjustable cheek. Manufactured by Zenit.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.VisualRecoilMult = 0.7
ATT.RecoilMult = 0.7

ATT.Category = {"eft_pk_stock"}

ATT.Attachments = {
    {
        PrintName = "Pistol grip",
        Category = {"eft_ak_grip"},
        Pos = Vector(1.8, 0, -0.15),
        Ang = Angle(0, 90, 2.5),
        Icon_Offset = Vector(0, -1.3, -1),
    },
    {
        PrintName = "Recoil pad",
        Category = {"eft_stock_ak_pad"},
        Pos = Vector(-2, -0.6, -0.5),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, -9, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_stock_pkm_zenit")
