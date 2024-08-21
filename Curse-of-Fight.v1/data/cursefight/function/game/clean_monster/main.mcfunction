tellraw @a {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"score":{"name":"_timer_min_","objective":"info"},"color":"gray"},{"text":"分鐘","color":"gray"},{"text":" | ","color":"white"},{"text":"清除怪物","color":"gold"},{"text":"啟動","color":"green"}]}
scoreboard players set _monster_clean_ activity_set 1
execute as @a at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @s ~ ~ ~
gamerule doMobSpawning false
kill @e[type=#cursefight:hostile,tag=!ad]
