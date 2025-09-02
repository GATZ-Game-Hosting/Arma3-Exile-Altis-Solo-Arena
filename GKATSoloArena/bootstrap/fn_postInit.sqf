/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

if (!isServer) exitWith {};

call compile preprocessFileLineNumbers "GKATSoloArena\config.sqf";

[] call GKATSOLOArenaObjectCreate;
[] call GKATSOLOArenaSetup;

"PostInit finished" call GKATSOLOArenaLogging;