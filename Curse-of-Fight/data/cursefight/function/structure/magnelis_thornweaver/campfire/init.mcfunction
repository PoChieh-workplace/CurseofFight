execute store result score @s magnelis_thornweaver_task_count run random value 3..5
execute if score @s magnelis_thornweaver_task_count matches 1.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute if score @s magnelis_thornweaver_task_count matches 2.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute if score @s magnelis_thornweaver_task_count matches 3.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute if score @s magnelis_thornweaver_task_count matches 4.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute if score @s magnelis_thornweaver_task_count matches 5.. run summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}
execute positioned ~-30 -70 ~-30 run spreadplayers ~30 ~30 8 15 false @e[type=minecraft:marker,tag=magnelis_thornweaver_temp,dx=60,dz=60,dy=400]
execute positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400] positioned over world_surface run place jigsaw cursefight:magnelis_thornweaver/campfire cursefight:bottom 1 ~ ~ ~
execute positioned ~-30 -70 ~-30 run kill @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400]
