advancement revoke @s only cursefight:structure/magnelis_thornweaver_campfire
tag @s add magnelis_thornweaver_player_temp
execute as @e[type=minecraft:marker,tag=magnelis_thornweaver_task_campfire,distance=..30] at @s if block ~ ~ ~ minecraft:campfire[lit=true] run cursefight:structure/magnelis_thornweaver/campfire/task_complete
tag @s remove magnelis_thornweaver_player_temp