##
 # file:    .debug_mod.mcfunction
 # purpose: reset and uninstall datapack functions when function called.
 # route:   cursefight:.debug_mod
 #
 # Created by Waterball.
##

scoreboard players set _game_start_ info 1
forceload add ~ ~
summon marker ~ ~ ~ {Tags:[alive,test1]}
summon marker ~ ~ ~ {Tags:[alive,test2]}
scoreboard players set _worldborder_ activity_set 1
scoreboard players set _border_reminder_ activity_set 1
scoreboard players set _glowing_ activity_set 1
scoreboard players set _worldborder_end_ activity_set 1
scoreboard players set _ominous_ activity_set 1