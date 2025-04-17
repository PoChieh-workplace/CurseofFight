execute store result score _timer_tick_ info run time query gametime
scoreboard players operation _timer_tick_ info -= _last_tick_ info

execute if score _timer_tick_ info matches 20.. run function cursefight:time/sec
execute if score _timer_tick_ info matches 20.. run execute store result score _last_tick_ info run time query gametime

# execute if score _timer_tick_ info matches 20.. run scoreboard players set _timer_tick_ info 0

execute if score _game_start_ info matches 1 run function cursefight:time/game_start_tick

execute as @a[scores={animation.timer=-1..}] run function cursefight:advancement/animation_tick

execute as @a[team=!black,gamemode=!spectator,tag=cursefight.alive] at @s if entity @e[type=minecraft:warden,distance=..10,tag=!summoned] run function cursefight:task/warden
execute as @e[type=minecraft:warden,tag=!cursefight.first_summoned] run function cursefight:mob/warden/init

# alive tag
execute as @a[team=!black] if score @s death matches 1.. run tag @s remove cursefight.alive
execute as @a[team=!black] if score @s death matches 0 run tag @s add cursefight.alive

# random activity
execute if score cursefight_activity_start X matches 1 run function cursefight:activity/random/tick

# bow acc_arrow
execute as @e[type=arrow,tag=cursefight.accuracy_shot,predicate=cursefight:accuracy_shot] at @s unless entity @a[distance=..5] run kill @s

# crossbow sniper
function cursefight:enchantment/crossbow/tick

# open chest and berrier
execute as @a[scores={open_chest=1..}] run function cursefight:game/generic/player/open_chest_or_barrel
execute as @a[scores={open_barrel=1..}] run function cursefight:game/generic/player/open_chest_or_barrel

# parachute
execute as @e[type=minecraft:allay,tag=parachute_allay] run function cursefight:game/spreadplayers/parachute/tick

# infested cave
function cursefight:biome/infested_caves/tick

# 
execute as @e[type=marker,tag=player_step_sculk_patch] at @s run function cursefight:structure/ancient_city/player_sculk_patch_tick