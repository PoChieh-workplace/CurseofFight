tag @s add magnelis_thornweaver_task_complete
execute at @s run playsound minecraft:block.beacon.activate neutral @a[distance=..20] ~ ~ ~ 1
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 10
tag @a[tag=magnelis_thornweaver_player_temp] add magnelis_thornweaver_player_complete_single_task

# update center score
execute positioned ~-30 -100 ~-30 as @n[tag=magnelis_thornweaver_center,type=minecraft:marker,dx=60,dz=60,dy=500] at @s positioned ~-30 -100 ~-30 store result score @s magnelis_thornweaver_task_completed run execute if entity @e[tag=magnelis_thornweaver_task,tag=magnelis_thornweaver_task_complete,type=minecraft:marker,dx=60,dz=60,dy=400]