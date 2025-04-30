execute store result score @s magnelis_thornweaver_task_count run random value 3..5
execute if score @s magnelis_thornweaver_task_count matches 3.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute if score @s magnelis_thornweaver_task_count matches 4.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute if score @s magnelis_thornweaver_task_count matches 5.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
spreadplayers ~ ~ 6 10 false @e[type=minecraft:marker,tag=magnelis_thornweaver_temp,distance=..40]
execute at @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,distance=..40] run place template cursefight:magnelis_thornweaver_task_campfire_1
kill @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,distance=..40]
