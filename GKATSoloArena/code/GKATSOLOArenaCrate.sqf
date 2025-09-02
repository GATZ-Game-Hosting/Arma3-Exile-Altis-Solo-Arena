/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

Params ["_GKATSOLOcrate","_Difficulty"];

Private ["_LootRandomizer","_itemtotal","_item","_jumppackrandomizer","_jumppack","_marker"];

_item = "";
_itemtotal = "";
Switch (_Difficulty) do
	{
		case 1: {_itemtotal = GKATSOLOCrateEasy;};
		case 2: {_itemtotal = GKATSOLOCrateModerate;};
		case 3: {_itemtotal = GKATSOLOCrateDifficult;};
		case 4: {_itemtotal = GKATSOLOCrateHardcore;};
	};
_GKATSOLOcrate enableSimulationGlobal true;
_marker = "SmokeShellPurple" createVehicle getPosATL _GKATSOLOcrate;
_marker setPosATL (getPosATL _GKATSOLOcrate);
_marker attachTo [_GKATSOLOcrate,[0,0,0]];

	for "_i" from 1 to _itemtotal do
	{
	
	_LootRandomizer = round random 98;

		switch (_LootRandomizer) do 
			{
				case 0: 
					{
						_jumppackrandomizer = random 10;
						_jumppack =  selectRandom ["SC_Jumppack_RO_Green","SC_Jumppack_RO_Black","SC_WarbotJumppack","SC_MercerJumppack","SC_MercerJumppack_Black","SC_MercerJumppack_Sand"];
						if (_jumppackrandomizer == 10) then
							{_item = _jumppack;}
							else
							{_item = "SC_EliminatorHead";};
					};
				case 1: {_item ="SC_Helmet_RO_Green_SL_V";};
				case 2: {_item ="SC_Helmet_RO_Black_SL_V";};
                case 3: {_item ="SC_Helmet_RO_Green_V";};
				case 4: {_item ="SC_Helmet_RO_Black_V";};
				case 5: {_item ="SC_Vest_Ronin_Green";};
				case 6: {_item ="SC_Vest_Ronin_Black";};
				case 7: {_item ="SC_MercerHelmetFaceplate";};
				case 8: {_item ="SC_MercerHelmetFaceplate_Sand";};
                case 9: {_item ="SC_MercerHelmet";};
                case 10: {_item ="SC_MercerHelmet_Khaki";};
                case 11: {_item ="SC_MercerVest";};
                case 12: {_item ="SC_MercerVestLight";};
                case 13: {_item ="SC_MercerVest_Khaki";};
                case 14: {_item ="SC_Backpack_WP_Desert";};
                case 15: {_item ="SC_Backpack_WP_Guard";};
                case 16: {_item ="SC_Backpack_WP_Urban";};
                case 17: {_item ="SC_Backpack_WP_Black";};
                case 18: {_item ="SC_Backpack_WP_Snow";};
                case 19: {_item ="SC_Backpack_WP_Green";};
                case 20: {_item ="SC_Helmet_WP_EUD_Desert_V";};
                case 21: {_item ="SC_Helmet_WP_EUD_Guard_V";};
                case 22: {_item ="SC_Helmet_WP_EUD_Urban_V";};
                case 23: {_item ="SC_Helmet_WP_EUD_Black_V";};
                case 24: {_item ="SC_Helmet_WP_EUD_Snow_V";};
                case 25: {_item ="SC_Helmet_WP_EUD_Green_V";};
                case 26: {_item ="SC_Vest_WP_Heavy_Desert";};
                case 27: {_item ="SC_Vest_WP_Heavy_Guard";};
                case 28: {_item ="SC_Vest_WP_Heavy_Urban";};
                case 29: {_item ="SC_Vest_WP_Heavy_Black";};
                case 30: {_item ="SC_Vest_WP_Heavy_Snow";};
                case 31: {_item ="SC_Vest_WP_Heavy_Green";};
                case 32: {_item ="SC_Vest_WP_Medium_Desert";};
                case 33: {_item ="SC_Vest_WP_Medium_Guard";};
                case 34: {_item ="SC_Vest_WP_Medium_Urban";};
                case 35: {_item ="SC_Vest_WP_Medium_Black";};
                case 36: {_item ="SC_Vest_WP_Medium_Snow";};
                case 37: {_item ="SC_Vest_WP_Medium_Green";};
                case 38: {_item ="SC_Vest_WP_Light_Desert";};
                case 39: {_item ="SC_Vest_WP_Light_Guard";};
                case 40: {_item ="SC_Vest_WP_Light_Urban";};
                case 41: {_item ="SC_Vest_WP_Light_Black";};
                case 42: {_item ="SC_Vest_WP_Light_Snow";};
                case 43: {_item ="SC_Vest_WP_Light_Green";};
                case 44: {_item ="SC_SentinelPack";};
                case 45: {_item ="SC_SentinelPack_Black";};
                case 46: {_item ="SC_SentinelPack_Night";};
                case 47: {_item ="SC_Helmet_SEN_Navy";};
                case 48: {_item ="SC_Helmet_SEN_Flecktarn";};
                case 49: {_item ="SC_Helmet_SEN_Black";};
                case 50: {_item ="SC_Helmet_SEN_TV10_Navy_V";};
                case 51: {_item ="SC_Helmet_SEN_TV10_Flecktarn_V";};
                case 52: {_item ="SC_Helmet_SEN_TV10_Black_V";};
                case 53: {_item ="SC_Vest_SEN_Heavy_Navy";};
                case 54: {_item ="SC_Vest_SEN_Heavy_Flecktarn";};
                case 55: {_item ="SC_Vest_SEN_Heavy_Black";};
                case 56: {_item ="SC_Vest_SEN_Heavy_Night";};
                case 57: {_item ="SC_Vest_SEN_Medium_Navy";};
                case 58: {_item ="SC_Vest_SEN_Medium_Flecktarn";};
                case 59: {_item ="SC_Vest_SEN_Medium_Black";};
                case 60: {_item ="SC_Vest_SEN_Medium_Night";};
                case 61: {_item ="SC_Backpack_SAM_White";};
                case 62: {_item ="SC_Backpack_SAM_Black";};
                case 63: {_item ="SC_Helmet_SAM_White";};
                case 64: {_item ="SC_Helmet_SAM_Black";};
                case 65: {_item ="SC_Helmet_SAM_White_V";};
                case 66: {_item ="SC_Helmet_SAM_Black_V";};
                case 67: {_item ="SC_Vest_SAM_Heavy_White";};
                case 68: {_item ="SC_Vest_SAM_Heavy_Black";};
                case 69: {_item ="SC_Vest_SAM_Light_White";};
                case 70: {_item ="SC_Vest_SAM_Light_Black";};
                case 71: {_item ="SC_Rifle_RAICR";};
                case 72: {_item ="SC_Rifle_SSR55";};
                case 73: {_item ="SC_Rifle_SSR55C";};
                case 74: {_item ="SC_Rifle_Bastard";};
                case 75: {_item ="SC_Rifle_Ravager";};
                case 76: {_item ="SC_Rifle_Ravager_MX";};
                case 77: {_item ="SC_Rifle_ARG47";};
                case 78: {_item ="SC_Rifle_ARG88";};
                case 79: {_item ="SC_Rifle_ARG88_Auto";};
                case 80: {_item ="SC_Rifle_ARG88M";};
                case 81: {_item ="SC_Rifle_SG7";};
                case 82: {_item ="SC_ZytherFluxCannon";};
                case 83: {_item ="SC_Rifle_PKMP";};
                case 84: {_item ="SC_AR_Uniform";};
                case 85: {_item ="SC_AR_Uniform_ARAF";};
                case 86: {_item ="SC_AR_Uniform_ARM_Desert";};
                case 87: {_item ="SC_AR_Uniform_ARM_Alpine";};
                case 88: {_item ="SC_AR_Uniform_SER";};
                case 89: {_item ="SC_AR_Uniform_ARN";};
                case 90: {_item ="SC_AR_Uniform_ARM_Winter";};
                case 91: {_item ="SC_Undersuit_Trojan";};
                case 92: {_item ="SC_Undersuit_Black";};
                case 93: {_item ="SC_Undersuit_Green";};
                case 94: {_item ="SC_Undersuit_Brown";};
                case 95: {_item ="SC_Warbot_Uniform";};
                case 96: {_item ="SC_Uniform_Warbot_Light";};
                case 97: {_item ="SC_Uniform_Warbot_Heavy";};
				default {diag_log "[GKAT] AI Crate Item add function had a weird case...";};
			};
	_GKATSOLOcrate addItemCargoGlobal [_item, 1];
	};