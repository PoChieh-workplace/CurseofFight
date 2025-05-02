execute at @s positioned ~-10 0 ~-10 at @e[tag=magnelis_thornweaver_task,tag=!magnelis_thornweaver_task_complete,type=minecraft:marker,dx=20,dz=20,dy=400] run particle minecraft:witch
execute at @s run particle minecraft:happy_villager

execute if score @s magnelis_thornweaver_task_completed >= @s magnelis_thornweaver_task_count run tag @s remove magnelis_thornweaver_center_active
execute if score @s magnelis_thornweaver_task_completed >= @s magnelis_thornweaver_task_count run tag @s add magnelis_thornweaver_center_completed
execute if score @s magnelis_thornweaver_task_completed >= @s magnelis_thornweaver_task_count run scoreboard players set @s cursefight.object.tick 0