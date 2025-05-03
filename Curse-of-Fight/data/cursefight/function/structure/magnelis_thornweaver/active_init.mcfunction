tag @s add magnelis_thornweaver_center_active
tag @s remove magnelis_thornweaver_activable

execute positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400] positioned over world_surface run place jigsaw cursefight:magnelis_thornweaver/campfire cursefight:bottom 1 ~ ~ ~
execute positioned ~-30 -70 ~-30 run kill @e[tag=magnelis_thornweaver_temp,type=minecraft:marker,dx=60,dz=60,dy=400]

playsound minecraft:cursefight.magnelis_thornweaver.task_start player @a[distance=..15]