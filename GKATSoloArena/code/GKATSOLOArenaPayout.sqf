/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/

Params ["_Gladiator","_Difficulty"];

private ["_GladiatorUID","_GladiatorRespect","_GKKillMSG1","_GKWinMessage","_GKKillMSG1","_PayIncrease","_GladiatorPay","_GKRepIncrease"];

_GladiatorUID = getPlayerUID _Gladiator;
_PayIncrease = "";
Switch (_Difficulty) do
	{
		case 1: {
				_PayIncrease = GKArenaCashEasy;
				_GKRepIncrease = GKArenaRepEasy;
				};
		case 2: {
				_PayIncrease = GKArenaCashModerate;
				_GKRepIncrease = GKArenaRepModerate;
				};
		case 3: {
				_PayIncrease = GKArenaCashDifficult;
				_GKRepIncrease = GKArenaRepDifficult;
				};
		case 4: {
				_PayIncrease = GKArenaCashHardcore;
				_GKRepIncrease = GKArenaRepHardcore;
				};
	};

if ((!isNull _Gladiator) && (isplayer _Gladiator)) then
	{
		///Add Money
		_GladiatorPay = _Gladiator getVariable ["ExileMoney", 0];
		_GladiatorPay = _GladiatorPay + _PayIncrease;
		_Gladiator setVariable ["ExileMoney",_GladiatorPay, true];
		_GKWinMessage = [[format ["Congrats! Arena Completed"],_PayIncrease]];
		[_Gladiator, "showFragRequest", [_GKWinMessage]] call ExileServer_system_network_send_to;

		///Original Rep
		_GladiatorRespect = _Gladiator getVariable ["ExileScore", 0];
		_GladiatorRespect = _GladiatorRespect + _GKRepIncrease;
		_Gladiator setVariable ["ExileScore",_GladiatorRespect];
		format["setAccountScore:%1:%2", _GladiatorRespect, _GladiatorUID] call ExileServer_system_database_query_fireAndForget;
		ExileClientPlayerScore = _GladiatorRespect;
		(owner _Gladiator) publicVariableClient "ExileClientPlayerScore";
		ExileClientPlayerScore = nil;
	};