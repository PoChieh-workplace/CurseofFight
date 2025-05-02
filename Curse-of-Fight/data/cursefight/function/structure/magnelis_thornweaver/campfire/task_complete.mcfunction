tag @s add magnelis_thornweaver_task_complete
execute at @s run playsound minecraft:block.beacon.activate
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 10
tag @a[tag=magnelis_thornweaver_player_temp] add magnelis_thornweaver_player_complete_single_task

# update center score
execute positioned ~-10 ~ ~-10 as @n[tag=magnelis_thornweaver_center,type=minecraft:marker,dx=20,dz=20,dy=400] at @s store result score @s magnelis_thornweaver_task_completed run execute if entity @e[tag=magnelis_thornweaver_task,tag=magnelis_thornweaver_task_complete,type=minecraft:marker,dx=20,dz=20,dy=400]