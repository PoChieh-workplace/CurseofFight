execute positioned ~-50 -70 ~-50 run tag @a[tag=cursefight.alive,dx=60,dz=60,dy=400,tag=magnelis_thornweaver_player_complete_single_task] add magnelis_thornweaver_player_complete_anim
execute if score @s cursefight.object.tick matches 1 run title @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] times 8t 10t 8t
execute if score @s cursefight.object.tick matches 1 run title @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] title {"text":"\uE01F","font":"minecraft:fade"}

execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,0,255,0]} ~ ~7 ~ 4 2 4 1 3
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,100,200,100]} ~ ~7 ~ 4 2 4 1 3
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,100,122,0]} ~ ~7 ~ 4 2 4 1 3

execute if score @s cursefight.object.tick matches 40 run fill ~4 ~6 ~4 ~-4 ~6 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 50 run fill ~4 ~5 ~4 ~-4 ~5 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 60 run fill ~4 ~4 ~4 ~-4 ~4 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 70 run fill ~4 ~3 ~4 ~-4 ~3 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 80 run fill ~4 ~2 ~4 ~-4 ~2 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 90 run fill ~4 ~1 ~4 ~-4 ~1 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 100 run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 110 run fill ~4 ~-1 ~4 ~-4 ~-1 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 110 run fill ~4 ~-1 ~4 ~-4 ~-1 ~-4 minecraft:air replace minecraft:pale_oak_leaves
execute if score @s cursefight.object.tick matches 110 run fill ~4 ~-1 ~4 ~-4 ~-1 ~-4 minecraft:grass_block replace minecraft:pale_moss_block