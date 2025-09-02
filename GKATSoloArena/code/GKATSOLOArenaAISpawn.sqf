/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

Params ["_Gladiator","_GKATSOLOcrate","_Difficulty"];

Private ["_AImodel_1","_AImodel_2","_AImodel_3","_AImodel_4","_lootWeapons","_debug","_aiUnits","_GKATAiUnits","_GKATGroupLeader","_GKATUnitsGroup","_rankBot","_skillLevel","_uniform","_backpack","_vst","_headgear","_counterItemAI","_randomItem","_items","_curWeapon","_aiMoney","_pos","_randompos"];

_lootWeapons = missionNamespace getVariable "GKAT_lootWeapons"; 

_debug = GKATArenaDebug;
_aiUnits = "";
Switch (_Difficulty) do
	{
		case 1: {_aiUnits = GKATAIperRoundEasy;};
		case 2: {_aiUnits = GKATAIperRoundModerate;};
		case 3: {_aiUnits = GKATAIperRoundDifficult;};
		case 4: {_aiUnits = GKATAIperRoundHardcore;};
	};
_pos = getPos _GKATSOLOcrate;
_randompos = selectRandom[[(_pos select 0)+20,(_pos select 1),0],[(_pos select 0)-20,(_pos select 1),0],[(_pos select 0),(_pos select 1)+20,0],[(_pos select 0),(_pos select 1)-20,0]];

_GKATAiUnits = [_randompos, EAST, _aiUnits,[],[],[0.5,0.9],[],[],(random 360)] call BIS_fnc_spawnGroup;
_GKATAiUnits deleteGroupWhenEmpty true;

//Add waypoint for the AI
_GKATGroupLeader = leader _GKATAiUnits;
_GKATUnitsGroup = group _GKATGroupLeader;
{				   
	removeAllWeapons _x;
	removeAllItems _x;
	removeUniform _x;
	removeVest _x;
	removeBackpack _x;
	removeBackpackGlobal _x;
	
	_rankBot = selectRandom GKAT_aiRanks;
	_x setUnitRank _rankBot;
	_skillLevel = selectRandom GKAT_aiSkill;
	_x setSkill _skillLevel;
	_x setSkill ["aimingAccuracy", 0.2];
	_uniform = selectRandom GKAT_aiUniform;
	_x forceAddUniform _uniform;
	_backpack = selectRandom GKAT_aiBackpack;
	_x addBackpack _backpack;
	_vst = selectRandom GKAT_aiVest;
	_x addVest _vst;
	_headgear = selectRandom GKAT_aiHeadgear;
	_x addHeadgear _headgear;
	if (_debug) then
	{
		diag_log format ["[GKAT]: AI Config: Rank:%1|Skill:%2|Uniform:%3|Backpack:%4|Vest:%5|Headger:%6",_rankBot,_skillLevel,_uniform,_backpack,_vst,_headgear];
	};
	_counterItemAI = (GKAT_aiItemCount select 0) + round random ((GKAT_aiItemCount select 1) - (GKAT_aiItemCount select 0));

	for "_i" from 1 to _counterItemAI do
	{
		_randomItem = floor random (10);
		switch (_randomItem) do 
		{
			case 0;
			case 1;
			case 2;
			case 3;
			case 4;
			case 5;
			case 6;							
			case 7:
			{ 
				_items = GKAT_aiMags call BIS_fnc_selectRandom;
				_x addMagazineCargoGlobal [_items,1];
				if (_debug) then
				{    
					diag_log format ["[GKAT] AI Item added: %1",_items];
				};
			};
			case 8;
			case 9: 
			{ 
				_items = GKAT_aiItems call BIS_fnc_selectRandom;
				_x addItemCargoGlobal [_items,1];
				if (_debug) then
				{
					diag_log format ["[GKAT] AI Magazine added: %1",_items];
				};
			};
			default { diag_log "[GKAT] AI Item add function had a weird case..." };
		};
	};
	if (_debug) then
	{
		diag_log format ["[GKAT]: AI Config: Item Count:%1",_counterItemAI];
	};
	_curWeapon = _lootWeapons call BIS_fnc_selectRandom;
	[_x,_curWeapon, 5] call BIS_fnc_addWeapon;
	_aiMoney = floor (random GKAT_AIMoney);
	_x setVariable ["ExileMoney",_aiMoney,true];
	if (_debug) then
	{
		diag_log format ["[GKAT]: AI Config: Weapon:%1|Money:%2",_curWeapon,_aiMoney];
	};

} forEach units _GKATAiUnits;

			
_GKATAiUnits allowFleeing 0;
 
_GKATUnitsGroup addWaypoint [position _Gladiator, 0];
[_GKATUnitsGroup, 0] setWaypointType "DESTROY";
[_GKATUnitsGroup, 0] setWaypointBehaviour "AWARE";