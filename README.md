This addon reqires the following mods:

Required: Scion Conflct Mod (https://steamcommunity.com/sharedfiles/filedetails/?id=2478080991&searchtext=scion+conflict)

//Instructions//

Un-PBO the file, edit config.sqf for any settings you want change and additionally in the code folder, edit the code/GKATSOLOArenaCrate.sqf to change the array of loot you want it to spawn.

RePBO and add into your @ExileServer/Addons

=================================

This will spawn in all objects and the arena on Altis at the coordinates 27875.4, 21662.8, 0. It's a completely containerized solo arena where waves of AI will need to be fought by one player. The player enters the arena, utlizes the trigger I've placed on the switch object in front of them which will lock them in to fight waves of AI. There is additionally a commmented out section in the GKATSOLOArenaObjectCreate.sqf labeled //Surface to Air Missile// that you can uncomment. This will create an invincible SAM system to keep players flying around it away that could help cheat the system by spotting enemies from a distance.  After beating the arena, the player will then use the leave switch to be teleported away from the arena so some else can have a try.  The coordinates they teleport to are 14540,16852.6,0.  If you need to change this, go into the code/GKATSOLOArenaStart.sqf, under "Teleport to Central Trader" and change the coordinates.

There also is 4 definied sounds labeled "rumble", "losesound", "teleport", and "next wave" which are just a fun addon if you want sounds to play at the start, if the player loses, inbetween each AI wave, and when the player finally beats the arena and is teleported back to Central Trader.  You'll just need to define create these in your mission file or change their names to something else you're already defining for sounds.
