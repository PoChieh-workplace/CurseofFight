tag @s add magnelis_thornweaver_center_active
tag @s remove magnelis_thornweaver_activable

execute if score @s X matches 1 run function cursefight:structure/magnelis_thornweaver/campfire/point_placement_auto_fixed
execute if score @s X matches 2 run function cursefight:structure/magnelis_thornweaver/trapdoor/point_placement_auto_fixed

execute positioned ~-30 -70 ~-30 store result score @s magnelis_thornweaver_task_count run execute if entity @e[type=marker,tag=magnelis_thornweaver_task,dx=60,dz=60,dy=400]
playsound minecraft:cursefight.magnelis_thornweaver.task_start player @a[distance=..15]