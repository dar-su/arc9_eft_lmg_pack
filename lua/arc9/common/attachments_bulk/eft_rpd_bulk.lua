local ATT = {}


///////////////////////////////////////      eft_rpd_barrel_520

ATT = {}

ATT.PrintName = "RPD 7.62x39 520mm barrel"
ATT.CompactName = "RPD 520mm"
ATT.Icon = Material("entities/eft_rpd_attachments/520.png", "mips smooth")
ATT.Description = [[A standard-issue 520mm barrel for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -11
ATT.CustomCons = { Ergonomics = "-11" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.SpreadOverride = 1.31 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_muzzle_rpd",
        Pos = Vector(0, 21, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Bipod",
        Category = "eft_bipod_rpd",
        Pos = Vector(0, 18, 1),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_rpd_barrel_520")

///////////////////////////////////////      eft_rpd_barrel_350

ATT = {}

ATT.PrintName = "RPD 7.62x39 sawed-off 350mm barrel"
ATT.CompactName = "RPD 350mm"
ATT.Icon = Material("entities/eft_rpd_attachments/350.png", "mips smooth")
ATT.Description = [[A 350mm barrel shortened by an unknown artisan for the RPD machine gun.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.SpreadOverride = 2.13 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_muzzle_rpd",
        Pos = Vector(0, 14, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_rpd_barrel_350")

///////////////////////////////////////      eft_rpd_muzzle

ATT = {}

ATT.PrintName = "RPD barrel thread protector"
ATT.CompactName = "RPD thr."
ATT.Icon = Material("entities/eft_rpd_attachments/mz.png", "mips smooth")
ATT.Description = [[A standard-issue barrel thread protector for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_muzzle_rpd"}

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

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.Bipod = true 
ATT.RecoilMultBipod = 0.33
ATT.VisualRecoilMultBipod = 0.33
ATT.VisualRecoilSpringPunchDampingMultBipod = 3
ATT.HoldBreathTimeMultBipod = 30
ATT.SwayMultBipod = 0.1

ATT.Category = {"eft_bipod_rpd"}

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

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_rpd_handguard"}

ARC9.LoadAttachment(ATT, "eft_rpd_hg")


///////////////////////////////////////      eft_rpd_stock

ATT = {}

ATT.PrintName = "RPD wooden stock"
ATT.CompactName = "RPD wood"
ATT.Icon = Material("entities/eft_rpd_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue wooden stock for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.]]

ATT.HasStock = true 

ATT.EFTErgoAdd = 16
ATT.CustomPros = { Ergonomics = "+16" }
ATT.RecoilMult = 0.78
ATT.VisualRecoilMult = 0.78

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stock_rpd"}

ATT.Attachments = {
    {
        PrintName = "Pistol Grip",
        Category = "eft_pg_rpd",
        Pos = Vector(0, 0, 3),
        Ang = Angle(0, -90, 0),
    },
}
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

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.Category = {"eft_pg_rpd"}

ARC9.LoadAttachment(ATT, "eft_rpd_pg")

///////////////////////////////////////      eft_rpd_mag_100

ATT = {}

ATT.PrintName = "RPD 7.62x39 \"Buben\" 100-round box"
ATT.CompactName = "Buben"
ATT.Icon = Material("entities/eft_rpd_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard-issue 100-round box for the RPD machine gun nicknamed "Buben" for its round shape. Manufactured by V.A. Degtyarev Plant.]]

ATT.EFTErgoAdd = -25
ATT.CustomPros = { Ergonomics = "-25" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_rpd_promag_opfor.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_rpd_mag"}

ATT.HasMag = true

ATT.ClipSize = 100
-- ATT.ChamberSize = 1

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
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Category = {"eft_rpd_conv"}

ARC9.LoadAttachment(ATT, "eft_rpd_n")