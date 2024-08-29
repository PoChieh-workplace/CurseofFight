tellraw @a {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"score":{"name":"_timer_min_","objective":"info"},"color":"gray"},{"text":"分鐘","color":"gray"},{"text":" | ","color":"white"},{"text":"邊界壓縮","color":"gold"},{"text":"結束","color":"dark_red"}]}
execute as @a at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @s ~ ~ ~
execute at @n[tag=border_center] run playsound minecraft:music_disc.pigstep record @a ~ 100 ~ 10000 1 1
scoreboard players set _worldborder_end_ activity_set 1