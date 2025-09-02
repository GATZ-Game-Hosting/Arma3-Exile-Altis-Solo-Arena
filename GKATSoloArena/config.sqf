/*
GKAT CAP
By GKAT Adam with help from
Crito @Vanaheim Gaming Servers
https://discord.gg/zWTAuanm5Q
*/

GKATSOLOTotalRounds = 11;									//Total Number of Rounds + 1

GKATAIperRoundEasy = 1;										//Number of AI spawn per round
GKATAIperRoundModerate = 2;									//Number of AI spawn per round
GKATAIperRoundDifficult = 3;								//Number of AI spawn per round
GKATAIperRoundHardcore = 4;									//Number of AI spawn per round

GKATSOLOCrateEasy = 3;										//Number of items in loot crate
GKATSOLOCrateModerate = 5;									//Number of items in loot crate
GKATSOLOCrateDifficult = 7;									//Number of items in loot crated
GKATSOLOCrateHardcore = 10;									//Number of items in loot crate

GKArenaCashEasy = round (random [50000, 100000, 150000]);		//Money for Winning
GKArenaCashModerate = round (random [150000, 200000, 250000]);		//Money for Winning
GKArenaCashDifficult = round (random [250000, 300000, 350000]);		//Money for Winning
GKArenaCashHardcore = round (random [350000, 400000, 450000]);		//Money for Winning

GKArenaRepEasy = round (random [15000, 20000, 25000]);			//Rep for Winning
GKArenaRepModerate = round (random [25000, 30000, 35000]);			//Rep for Winning
GKArenaRepDifficult = round (random [35000, 40000, 45000]);			//Rep for Winning
GKArenaRepHardcore = round (random [45000, 50000, 55000]);			//Rep for Winning

GKATArenaDebug = false;									//Debugger

//AISpawnSpecs					

GKAT_aiItemCount = [3,6]; // The amount [min,max] of items that the AI will carry
GKAT_aiRanks = ["CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"]; // List of potential AI ranks
GKAT_aiSkill = [0.2,0.3,0.4,0.5,0.6]; // Random skill levels, will apply to overall "skill" 

GKAT_AIMoney = 0;				// Max amount of money in AI pockets


// Uniform and Weapons if GKAT_overrideDefaultGear = true
						
GKAT_aiUniform = 		[
							"U_O_V_Soldier_Viper_F"
						];
GKAT_aiBackpack = 		[
							"B_Bergen_dgtl_F"
						];

GKAT_aiVest = 			[
							"HAP_VEST_KERRY_brown"
						];

GKAT_aiHeadgear =		[
							"H_HelmetLeaderO_ocamo"
						];

GKAT_aiMags = 			[
							"HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade"
						];
						
GKAT_aiItems = 			[
							"Rangefinder","optic_TWS","Rangefinder"
						];
						
GKAT_lootWeapons = 		[
							"arifle_MXM_Black_F","arifle_MXM_F","srifle_DMR_01_F","srifle_DMR_02_camo_F","srifle_DMR_02_F","srifle_DMR_02_sniper_F",
							"srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_multicam_F","srifle_DMR_03_tan_F","srifle_DMR_03_woodland_F",
							"srifle_DMR_04_F","srifle_DMR_04_Tan_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f","srifle_DMR_06_camo_F",
							"srifle_DMR_06_olive_F","srifle_EBR_F","srifle_GM6_camo_F","srifle_GM6_F","srifle_LRR_camo_F","srifle_LRR_F",
						 
							"arifle_MX_SW_Black_F","arifle_MX_SW_F","LMG_Mk200_F","MMG_01_hex_F","MMG_01_tan_F","MMG_02_camo_F","MMG_02_black_F",
							"MMG_02_sand_F","LMG_Zafir_F",
						 
							"arifle_Katiba_C_F","arifle_Katiba_F","arifle_Katiba_GL_F","arifle_Mk20_F","arifle_Mk20_GL_F","arifle_Mk20_GL_plain_F",
							"arifle_Mk20_plain_F","arifle_Mk20C_F","arifle_Mk20C_plain_F","arifle_MX_Black_F","arifle_MX_F","arifle_MX_GL_Black_F",
							"arifle_MX_GL_F","arifle_MXC_Black_F","arifle_MXC_F","arifle_SDAR_F","arifle_TRG20_F","arifle_TRG21_F","arifle_TRG21_GL_F"
						];

GKAT_lootMags = 		[
							"HandGrenade","MiniGrenade","B_IR_Grenade","O_IR_Grenade","I_IR_Grenade","1Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell",
							"APERSBoundingMine_Range_Mag","APERSMine_Range_Mag","APERSTripMine_Wire_Mag","ClaymoreDirectionalMine_Remote_Mag",
							"DemoCharge_Remote_Mag","IEDLandBig_Remote_Mag","IEDLandSmall_Remote_Mag","IEDUrbanBig_Remote_Mag","IEDUrbanSmall_Remote_Mag",
							"SatchelCharge_Remote_Mag","SLAMDirectionalMine_Wire_Mag"
						];
						
GKAT_lootPacks = 		[
						 
							"B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr",
							"B_AssaultPack_sgg","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_TacticalPack_blk",
							"B_TacticalPack_rgr","B_TacticalPack_ocamo","B_TacticalPack_mcamo","B_TacticalPack_oli","B_Kitbag_cbr","B_Kitbag_mcamo",
							"B_Kitbag_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo",
							"B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_HuntingBackpack","B_OutdoorPack_blk","B_OutdoorPack_blu"
						];
						
GKAT_lootItems = 		[
						 
							"Rangefinder","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR"
						];