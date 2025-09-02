/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/
 
private["_code"];

{
    _code = compileFinal (preprocessFileLineNumbers (_x select 1));
    missionNamespace setVariable [(_x select 0), _code, true];
}
forEach
[
	['GKATSOLOArenaStart','GKATSoloArena\code\GKATSOLOArenaStart.sqf'],
	['GKATSOLOArenaSetup','GKATSoloArena\code\GKATSOLOArenaSetup.sqf'],
	['GKATSOLOArenaLogging','GKATSoloArena\code\GKATSOLOArenaLogging.sqf'],
	['GKATSOLOArenaObjectCreate','GKATSoloArena\code\GKATSOLOArenaObjectCreate.sqf'],
	['GKATSOLOArenaAISpawn','GKATSoloArena\code\GKATSOLOArenaAISpawn.sqf'],
	['GKATSOLOArenaPayout','GKATSoloArena\code\GKATSOLOArenaPayout.sqf'],
	['GKATSOLOArenaCrate','GKATSoloArena\code\GKATSOLOArenaCrate.sqf'],
	['GKATSOLOArenaReset','GKATSoloArena\code\GKATSOLOArenaReset.sqf']
];

"PreInit finished" call GKATSOLOArenaLogging;

