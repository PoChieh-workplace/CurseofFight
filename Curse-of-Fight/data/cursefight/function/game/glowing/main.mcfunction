tellraw @a {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"score":{"name":"_timer_min_","objective":"info"},"color":"gray"},{"text":"分鐘","color":"gray"},{"text":" | ","color":"white"},{"text":"玩家發光","color":"gold"},{"text":"啟動","color":"green"}]}
execute as @a at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @s ~ ~ ~
scoreboard players set @a[tag=cursefight.alive] found_player_time 999

scoreboard players set _glowing_ activity_set 1