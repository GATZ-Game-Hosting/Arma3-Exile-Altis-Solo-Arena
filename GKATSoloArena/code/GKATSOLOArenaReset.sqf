/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

params ["_EnterGate","_ExitGate","_LeaveSwitch","_StartSwitch","_GKATSOLOcrate"];

removeAllActions _StartSwitch;
removeAllActions _LeaveSwitch;

_EnterGate enableSimulationGlobal true;
([_ExitGate, 1, 0] call BIS_fnc_Door);
uiSleep 5;
_ExitGate enableSimulationGlobal false;
deleteVehicle _GKATSOLOcrate;

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
] remoteExec ["addAction",-2,true];

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
] remoteExec ["addAction",-2,true];

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
] remoteExec ["addAction",-2,true];

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
] remoteExec ["addAction",-2,true];