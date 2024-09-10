scoreboard players add _timer_sec_ info 1
execute if score _game_start_ info matches 1 if score _timer_sec_ info matches 60.. run function cursefight:time/min


# check activity set
execute if score _game_start_ info matches 1 run function cursefight:activity/sec_check

# game start set
execute if score _game_start_ info matches 1 run function cursefight:time/game_start_sec

# village career Xp
execute as @a at @s if entity @n[type=minecraft:villager,distance=..5] run function cursefight:mob/villager/xp_sec

# village protect particle
function cursefight:particle/sec
execute as @e[type=minecraft:marker,tag=village_protect] at @s run tp @s ~ ~ ~ ~-20 0
execute as @e[type=minecraft:marker,tag=village_protect] at @s run execute as @e[type=#minecraft:zombies,distance=..100] run damage @s 5 minecraft:wither