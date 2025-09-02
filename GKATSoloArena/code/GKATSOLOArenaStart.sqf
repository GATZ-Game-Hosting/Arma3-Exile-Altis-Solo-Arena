/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

Params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch","_Gladiator","_Difficulty"];

Private ["_RoundCount","_RoundMSG","_side","_radius","_nearMen","_SoloArenaVariables","_markerpos","_Gladiatorinarena","_netid","_objid","_playerClose","_markerpos","_nearplayercount","_StartMSG"];
_StartMSG = "";
Switch (_Difficulty) do
	{
		case 1: {_StartMSG = "Easy Solo Arena Will Begin in 30 Seconds";};
		case 2: {_StartMSG = "Moderate Solo Arena Will Begin in 30 Seconds";};
		case 3: {_StartMSG = "Difficult Solo Arena Will Begin in 30 Seconds";};
		case 4: {_StartMSG = "Hardcore Solo Arena Will Begin in 30 Seconds";};
	};
		
_netid = netid _Gladiator;
_objid = objectFromNetId _netid;
[_Gladiator, "toastRequest", ["InfoTitleAndText", [_StartMSG]]] call ExileServer_system_network_send_to;
["rumble"] remoteExec ["playSound", _objid];

([_EnterGate, 1, 0] call BIS_fnc_Door); //Closes Front Gate
uiSleep 5;
_EnterGate enableSimulationGlobal false;
//Loot Crate Shell
_GKATSOLOcrate = createVehicle ["Box_NATO_Wps_F",[27875.4, 21662.8, 0],[], 0, "CAN_COLLIDE"];
		_GKATSOLOcrate allowDamage false;
		_GKATSOLOcrate enableSimulationGlobal false;
		_GKATSOLOcrate enableRopeAttach false;
		clearWeaponCargoGlobal 		_GKATSOLOcrate;
		clearItemCargoGlobal 		_GKATSOLOcrate;
		clearMagazineCargoGlobal 	_GKATSOLOcrate;
		clearBackpackCargoGlobal 	_GKATSOLOcrate;

uiSleep 25;
_RoundCount = 0;
_markerpos = getMarkerPos "Solo_Arena_Area";
_SoloArenaVariables = [_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch,_GKATSOLOcrate];

While {isServer} do
{
_Gladiatorinarena = _Gladiator distance _markerpos;
	if (!alive _Gladiator || _Gladiatorinarena > 60) exitWith
	{
		[_Gladiator, "toastRequest", ["InfoTitleAndText", ["Arena Challenge Failed"]]] call ExileServer_system_network_send_to;
		["losesound"] remoteExec ["playSound", _objid];
		Private _side = east;
		Private _radius = 80; // radius of the EMPs effect
		_nearMen = [27875.4, 21662.8, 0] nearEntities [["Man"], _radius];
			{
				if (side _x == _side) then {
				_x setDamage 1.0; 
				};
			} forEach (_nearMen - [_Gladiator]); 
		_EnterGate enableSimulationGlobal true;
		deleteVehicle _GKATSOLOcrate;
[
	_StartSwitch,
		[
			"Begin Easy Solo Arena Challenge", //Text
				{//Script
					params ["_target", "_caller", "_actionId", "_arguments"];
					_arguments params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch"];
					_EnterGate = (_this select 3) select 0;
					_ExitGate = (_this select 3) select 1;
					_LeaveSwitch = (_this select 3) select 2;
					_StartSwitch = (_this select 3) select 3;
					_Gladiator = _this select 1;
					_Difficulty = 1;
					_netid = netid _Gladiator;
					_objid = objectFromNetId _netid;
					_playerClose = [];
					_markerpos = getMarkerPos "Solo_Arena_Area";
					{
						if ((_x distance _markerpos) < 80) then 
						{
						_playerClose pushback _x;
						};
					} foreach allPlayers;
					
					_nearplayercount = count _playerClose;
					
					if (_nearplayercount > 1) exitWith
						{ 
					[_Gladiator, "toastRequest", ["InfoTitleAndText", ["Reduce Total Number of Players in Arena to 1"]]] remoteExec ["ExileServer_system_network_send_to", 2];
						};
					removeAllActions _StartSwitch;
					//
					[_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch,_Gladiator,_Difficulty] remoteExec ["GKATSOLOArenaStart", 2]; //Starts the Arena
				},
			_SoloArenaVariables, //Arguments
			1, //Priority
			true, //showWindow
			true, //hideOnUse
			"", //shortcut
			"true", //condition
			10
		]
] remoteExec ["addAction",0,true];

[
	_StartSwitch,
		[
			"Begin Moderate Solo Arena Challenge", //Text
				{//Script
					params ["_target", "_caller", "_actionId", "_arguments"];
					_arguments params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch"];
					_EnterGate = (_this select 3) select 0;
					_ExitGate = (_this select 3) select 1;
					_LeaveSwitch = (_this select 3) select 2;
					_StartSwitch = (_this select 3) select 3;
					_Gladiator = _this select 1;
					_Difficulty = 2;
					_netid = netid _Gladiator;
					_objid = objectFromNetId _netid;
					_playerClose = [];
					_markerpos = getMarkerPos "Solo_Arena_Area";
					{
						if ((_x distance _markerpos) < 80) then 
						{
						_playerClose pushback _x;
						};
					} foreach allPlayers;
					
					_nearplayercount = count _playerClose;
					
					if (_nearplayercount > 1) exitWith
						{ 
					[_Gladiator, "toastRequest", ["InfoTitleAndText", ["Reduce Total Number of Players in Arena to 1"]]] remoteExec ["ExileServer_system_network_send_to", 2];
						};
					removeAllActions _StartSwitch;
					//
					[_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch,_Gladiator,_Difficulty] remoteExec ["GKATSOLOArenaStart", 2]; //Starts the Arena
				},
			_SoloArenaVariables, //Arguments
			2, //Priority
			true, //showWindow
			true, //hideOnUse
			"", //shortcut
			"true", //condition
			10
		]
] remoteExec ["addAction",0,true];

[
	_StartSwitch,
		[
			"Begin Difficult Solo Arena Challenge", //Text
				{//Script
					params ["_target", "_caller", "_actionId", "_arguments"];
					_arguments params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch"];
					_EnterGate = (_this select 3) select 0;
					_ExitGate = (_this select 3) select 1;
					_LeaveSwitch = (_this select 3) select 2;
					_StartSwitch = (_this select 3) select 3;
					_Gladiator = _this select 1;
					_Difficulty = 3;
					_netid = netid _Gladiator;
					_objid = objectFromNetId _netid;
					_playerClose = [];
					_markerpos = getMarkerPos "Solo_Arena_Area";
					{
						if ((_x distance _markerpos) < 80) then 
						{
						_playerClose pushback _x;
						};
					} foreach allPlayers;
					
					_nearplayercount = count _playerClose;
					
					if (_nearplayercount > 1) exitWith
						{ 
					[_Gladiator, "toastRequest", ["InfoTitleAndText", ["Reduce Total Number of Players in Arena to 1"]]] remoteExec ["ExileServer_system_network_send_to", 2];
						};
					removeAllActions _StartSwitch;
					//
					[_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch,_Gladiator,_Difficulty] remoteExec ["GKATSOLOArenaStart", 2]; //Starts the Arena
				},
			_SoloArenaVariables, //Arguments
			3, //Priority
			true, //showWindow
			true, //hideOnUse
			"", //shortcut
			"true", //condition
			10
		]
] remoteExec ["addAction",0,true];

[
	_StartSwitch,
		[
			"Begin Hardcore Solo Arena Challenge", //Text
				{//Script
					params ["_target", "_caller", "_actionId", "_arguments"];
					_arguments params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch"];
					_EnterGate = (_this select 3) select 0;
					_ExitGate = (_this select 3) select 1;
					_LeaveSwitch = (_this select 3) select 2;
					_StartSwitch = (_this select 3) select 3;
					_Gladiator = _this select 1;
					_Difficulty = 4;
					_netid = netid _Gladiator;
					_objid = objectFromNetId _netid;
					_playerClose = [];
					_markerpos = getMarkerPos "Solo_Arena_Area";
					{
						if ((_x distance _markerpos) < 80) then 
						{
						_playerClose pushback _x;
						};
					} foreach allPlayers;
					
					_nearplayercount = count _playerClose;
					
					if (_nearplayercount > 1) exitWith
						{ 
					[_Gladiator, "toastRequest", ["InfoTitleAndText", ["Reduce Total Number of Players in Arena to 1"]]] remoteExec ["ExileServer_system_network_send_to", 2];
						};
					removeAllActions _StartSwitch;
					//
					[_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch,_Gladiator,_Difficulty] remoteExec ["GKATSOLOArenaStart", 2]; //Starts the Arena
				},
			_SoloArenaVariables, //Arguments
			4, //Priority
			true, //showWindow
			true, //hideOnUse
			"", //shortcut
			"true", //condition
			10
		]
] remoteExec ["addAction",0,true];
	};
	_RoundCount = _RoundCount + 1;
		if (_RoundCount == GKATSOLOTotalRounds) exitWith 
		{
			Private _side = east;
			Private _radius = 80; // radius of the EMPs effect
			_nearMen = [27875.4, 21662.8, 0] nearEntities [["Man"], _radius];
				{
					if (side _x == _side) then {
					_x setDamage 1.0; 
					};
				} forEach (_nearMen - [_Gladiator]); 
			[_Gladiator,_Difficulty] call GKATSOLOArenaPayout;
			[_GKATSOLOcrate,_Difficulty] execVM "GKATSoloArena\code\GKATSOLOArenaCrate.sqf";
			_ExitGate enableSimulationGlobal true;
			[
			_LeaveSwitch,
				[
					"Teleport to Central Trader", //Text
						{ //Script
						params ["_target", "_caller", "_actionId", "_arguments"];
						_arguments params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch","_GKATSOLOcrate"];
						_EnterGate = (_this select 3) select 0;
						_ExitGate = (_this select 3) select 1;
						_LeaveSwitch = (_this select 3) select 2;
						_StartSwitch = (_this select 3) select 3;
						_GKATSOLOcrate = (_this select 3) select 4;
						[_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch,_GKATSOLOcrate] remoteExec ["GKATSOLOArenaReset",2]; //Starts the Arena
							private _safepos1 = [[14540,16852.6,0],0,20,0,0,0]call BIS_fnc_findSafePos;
							[0, "BLACK", 12, 1] spawn BIS_fnc_fadeEffect;
							playSound "teleport";
							sleep 12;
							[1, "BLACK", 8, 1] spawn BIS_fnc_fadeEffect; 
							(vehicle player) setPos _safepos1;
							_LeaveSwitch removeaction (_this select 2);
						},
				_SoloArenaVariables, //Arguments
				3, //Priority
				true, //showWindow
				true, //hideOnUse
				"", //shortcut
				"true", //condition
				10
				]
			] remoteExecCall ["addAction",0,true];
		};
	["nextwave"] remoteExec ["playSound", _objid];
	diag_log format ["Spawning AI Wave %1", _RoundCount];
	_RoundMSG = format ["Spawning AI Wave %1", _RoundCount];
	[_Gladiator, "toastRequest", ["InfoTitleAndText", [_RoundMSG]]] call ExileServer_system_network_send_to;
	[_Gladiator, _GKATSOLOcrate,_Difficulty] execVM "GKATSoloArena\code\GKATSOLOArenaAISpawn.sqf";
	Sleep 60;
};
	
	