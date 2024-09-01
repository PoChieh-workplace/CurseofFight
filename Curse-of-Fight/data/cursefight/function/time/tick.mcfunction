execute store result score _timer_tick_ info run time query gametime
scoreboard players operation _timer_tick_ info -= _last_tick_ info

execute if score _timer_tick_ info matches 20.. run function cursefight:time/sec
execute if score _timer_tick_ info matches 20.. run execute store result score _last_tick_ info run time query gametime

# execute if score _timer_tick_ info matches 20.. run scoreboard players set _timer_tick_ info 0

execute if score _game_start_ info matches 1 run function cursefight:time/game_start_tick

execute as @a[scores={animation.timer=-1..}] run function cursefight:advancement/animation_tick

execute as @a[team=!black,gamemode=!spectator,scores={death=0}] at @s if entity @e[type=minecraft:warden,distance=..10,tag=!summoned] run function cursefight:task/warden

# bow acc_arrow
execute as @e[type=arrow,tag=cursefight.accuracy_shot,predicate=cursefight:accuracy_shot] at @s unless entity @a[distance=..5] run kill @s

# crossbow sniper
function cursefight:enchantment/crossbow/tick