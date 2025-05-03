execute positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400] positioned over motion_blocking_no_leaves run place jigsaw cursefight:magnelis_thornweaver/trapdoor cursefight:bottom 1 ~ ~-3 ~
execute positioned ~-30 -70 ~-30 run kill @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400]
execute positioned ~-30 -70 ~-30 store result score @s magnelis_thornweaver_task_count run execute if entity @e[type=marker,tag=magnelis_thornweaver_task_trapdoor,dx=60,dz=60,dy=400]

execute positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_task_trapdoor,type=minecraft:marker,dx=60,dz=60,dy=400] run function cursefight:structure/magnelis_thornweaver/trapdoor/setblock_random