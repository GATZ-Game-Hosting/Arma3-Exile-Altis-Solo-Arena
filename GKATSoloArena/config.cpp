/*
GKAT Arena
By GKAT Adam 
https://discord.gg/zWTAuanm5Q
*/
class CfgPatches
{
	class GKATArena
	{
		requiredVersion = 0.1;
		requiredAddons[] = {
            "exile_server"
        };
		units[] = {};
		weapons[] = {};
	};
};

class CfgFunctions 
{
	class GKATArena 
	{
		class main 
		{			
			file="GKATSoloArena\bootstrap";
			class preInit
            {
                preInit = 1;
            };
			class postInit
			{
				postInit = 1;
			};
		};
	};
};
