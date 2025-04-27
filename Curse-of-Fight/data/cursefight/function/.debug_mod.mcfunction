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