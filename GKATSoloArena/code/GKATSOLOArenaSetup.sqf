/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

if (!isServer) exitWith {};

private ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch","_SoloArenaVariables"];

//Entrance Gate
_EnterGate = createVehicle ["Land_SC_Wall_Gate", [27846.6, 21641.8, 0], [], 0, "CAN_COLLIDE"];
_EnterGate allowDamage false;
_EnterGate setVectorDirAndUp [[0.5936, -0.804761, 0], [0, 0, 1]];
_EnterGate enableSimulationGlobal true;

//Leave Gate
_ExitGate = createVehicle ["Land_SC_Wall_Gate", [27879.5, 21717.1, 0], [], 0, "CAN_COLLIDE"];
_ExitGate allowDamage false;
_ExitGate setVectorDirAndUp [[0.989063, -0.147492, 0], [0, 0, 1]];
_ExitGate enableSimulationGlobal false;

//Leave Switch
_LeaveSwitch = createVehicle ["Land_TransferSwitch_01_F", [27880.1, 21726, 0.979], [], 0, "CAN_COLLIDE"];
_LeaveSwitch allowDamage false;
_LeaveSwitch setVectorDirAndUp [[0.128744, 0.991655, 0.00666756], [-0.0259725, -0.00334942, 0.999657]];

//Start Switch
_StartSwitch = createVehicle ["Land_TransferSwitch_01_F", [27853, 21651.2, 0.979], [], 0, "CAN_COLLIDE"];
_StartSwitch allowDamage false;
_StartSwitch setVectorDirAndUp [[0.766047, 0.642751, 0.00666787], [-0.0213845, 0.0151162, 0.999657]];

_SoloArenaVariables = [_EnterGate,_ExitGate,_LeaveSwitch,_StartSwitch];

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
		

