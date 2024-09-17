##
 # file:    reset.mcfunction
 # purpose: reset and uninstall datapack functions when function called.
 # route:   cursefight:reset
 #
 # Created by Waterball.
##
execute at @e[tag=ad] run setblock ~ ~ ~ air
execute at @n[tag=lobby_center,type=armor_stand] run fill ~15 ~20 ~15 ~-15 ~-12 ~-15 air
execute at @n[tag=lobby_center,type=armor_stand] run kill @e[type=!minecraft:player,distance=0.1..30]
kill @e[tag=lobby_center,type=armor_stand]
kill @e[tag=alive,type=marker]
scoreboard objectives remove info
scoreboard objectives remove show_info
scoreboard objectives remove death
scoreboard objectives remove X
scoreboard objectives remove posX
scoreboard objectives remove posZ
scoreboard objectives remove career_chosen
scoreboard objectives remove health
scoreboard objectives remove cursefight_health
scoreboard objectives remove kills
scoreboard objectives remove activity_set
scoreboard objectives remove damage_warn
scoreboard objectives remove knowledge
scoreboard objectives remove use_skill
scoreboard objectives remove mobile_respawn
scoreboard objectives remove respawning
scoreboard objectives remove respawning_sec 
scoreboard objectives remove respawning_if_firework 
scoreboard objectives remove player_random
scoreboard objectives remove survival_time
scoreboard objectives remove team_respawn
scoreboard objectives remove self_respawn
scoreboard objectives remove villager_xp 
scoreboard objectives remove open_chest
scoreboard objectives remove open_barrel
scoreboard objectives remove _skill_cool_
scoreboard objectives remove _ultimate_cool_

# 動畫
scoreboard objectives remove animation.timer.a
scoreboard objectives remove animation.timer
scoreboard objectives remove animation.playing

gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doImmediateRespawn false
gamerule doWeatherCycle true
gamerule randomTickSpeed 3
gamerule sendCommandFeedback true
time set 1d
weather clear
worldborder set 58999999
team remove white
team remove red
team remove blue
team remove yellow
team remove green
team remove aqua
team remove gray
team remove gold
team remove dark_red
team remove dark_green
team remove dark_gray
team remove light_purple
team remove dark_purple
team remove dark_aqua
team remove dark_blue
team remove black
team remove now_team
tag @a remove gameplay
kill @e[tag=ad]
kill @n[tag=lobby_center]
kill @n[tag=border_center]
forceload remove all