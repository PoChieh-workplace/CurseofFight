# set animation player
execute if score @s cursefight.object.tick matches 1 positioned ~-30 -70 ~-30 run tag @a[tag=cursefight.alive,dx=60,dz=60,dy=400,tag=magnelis_thornweaver_player_complete_single_task] add magnelis_thornweaver_player_complete_anim

execute if score @s cursefight.object.tick matches 1 run title @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] times 8t 10t 8t
execute if score @s cursefight.object.tick matches 1 run title @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] title {"text":"\uE01F","font":"minecraft:fade"}


# summon armor stand for spectator
execute if score @s cursefight.object.tick matches 1 at @s rotated 180 -10 run summon minecraft:armor_stand ^ ^ ^5 {Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,Small:true,Tags:["magnelis_thornweaver_complete_ani_point"]}
execute if score @s cursefight.object.tick matches 11 run gamemode spectator @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] 
execute if score @s cursefight.object.tick matches 12..159 as @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] run spectate @n[tag=magnelis_thornweaver_complete_ani_point] @s

execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,0,255,0]} ~ ~7 ~ 4 2 4 1 3
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,100,200,100]} ~ ~7 ~ 4 2 4 1 3
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,100,122,0]} ~ ~7 ~ 4 2 4 1 3

execute if score @s cursefight.object.tick matches 30 run playsound minecraft:cursefight.magnelis_thornweaver.task_complete neutral @a[distance=..30] ~ ~ ~ 1
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
execute if score @s cursefight.object.tick matches 120 run place feature minecraft:forest_flowers
execute if score @s cursefight.object.tick matches 130 run place feature minecraft:flower_flower_forest


execute if score @s cursefight.object.tick matches 150 run title @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] times 8t 10t 8t
execute if score @s cursefight.object.tick matches 150 run title @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] title {"text":"\uE01F","font":"minecraft:fade"}
execute if score @s cursefight.object.tick matches 160 run tp @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] @s
execute if score @s cursefight.object.tick matches 160 run gamemode survival @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50]

execute if score @s cursefight.object.tick matches 161 positioned ~-30 -70 ~-30 run tag @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] remove magnelis_thornweaver_player_complete_single_task
execute if score @s cursefight.object.tick matches 161 positioned ~-30 -70 ~-30 run tag @a[tag=magnelis_thornweaver_player_complete_anim,distance=..50] remove magnelis_thornweaver_player_complete_anim
execute if score @s cursefight.object.tick matches 161 run kill @e[type=armor_stand,tag=magnelis_thornweaver_complete_ani_point,distance=..50]
execute if score @s cursefight.object.tick matches 161 run loot spawn ~ ~ ~ loot cursefight:worldgen/magnelis_thornweaver/complete
execute if score @s cursefight.object.tick matches 161 run tag @s remove magnelis_thornweaver_center_completed
execute if score @s cursefight.object.tick matches 161 run tag @s add magnelis_thornweaver_center_all_completed


scoreboard players add @s cursefight.object.tick 1