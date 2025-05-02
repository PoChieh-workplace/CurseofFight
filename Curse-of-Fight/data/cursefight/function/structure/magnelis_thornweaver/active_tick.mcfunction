execute at @s positioned ~-30 -70 ~-30 at @e[tag=magnelis_thornweaver_task,tag=!magnelis_thornweaver_task_complete,type=minecraft:marker,dx=60,dz=60,dy=450] run particle minecraft:witch
execute at @s run particle minecraft:happy_villager

execute if score @s magnelis_thornweaver_task_completed >= @s magnelis_thornweaver_task_count run tag @s remove magnelis_thornweaver_center_active
execute if score @s magnelis_thornweaver_task_completed >= @s magnelis_thornweaver_task_count run tag @s add magnelis_thornweaver_center_completed
execute if score @s magnelis_thornweaver_task_completed >= @s magnelis_thornweaver_task_count run scoreboard players set @s cursefight.object.tick 0