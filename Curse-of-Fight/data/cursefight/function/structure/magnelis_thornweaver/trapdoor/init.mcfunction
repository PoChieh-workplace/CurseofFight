scoreboard players set @s magnelis_thornweaver_task_count 9
summon minecraft:marker ~ ~ ~ {Tags:["magnelis_thornweaver_temp"]}

execute positioned ~-30 -70 ~-30 run spreadplayers ~30 ~30 12 16 false @e[type=minecraft:marker,tag=magnelis_thornweaver_temp,dx=60,dz=60,dy=400]
execute positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400] positioned over world_surface run place jigsaw cursefight:magnelis_thornweaver/trapdoor cursefight:bottom 1 ~ ~ ~
execute positioned ~-30 -70 ~-30 run kill @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400]
