execute positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400] positioned over world_surface run place jigsaw cursefight:magnelis_thornweaver/campfire cursefight:bottom 1 ~ ~ ~
execute positioned ~-30 -70 ~-30 run kill @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400]
execute positioned ~-30 -70 ~-30 store result score @s magnelis_thornweaver_task_count run execute if entity @e[type=marker,tag=magnelis_thornweaver_task_campfire,dx=60,dz=60,dy=400]
