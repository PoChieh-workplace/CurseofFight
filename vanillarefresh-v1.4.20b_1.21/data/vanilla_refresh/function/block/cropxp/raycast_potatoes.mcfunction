
scoreboard players add temp refresh_count 1
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:potatoes align zyx positioned ~.5 ~.5 ~.5 unless entity @e[distance=..0.01,type=marker,tag=refresh_entity_crop_potatoes] run function vanilla_refresh:block/cropxp/place

execute unless score temp refresh_count matches 200.. run function vanilla_refresh:block/cropxp/raycast_potatoes
#particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..64,tag=refresh_debug]



scoreboard players reset temp refresh_count
