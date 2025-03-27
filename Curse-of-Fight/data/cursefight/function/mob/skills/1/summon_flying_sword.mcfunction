
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Small:true,DisabledSlots:4144959,Pose:{RightArm:[350f,0f,270f]},HandItems:[{id:"minecraft:diamond_sword",Count:1},{}],Tags:["flying_sword","flying_sword_init"]}
tag @r[distance=2..20,tag=cursefight.alive] add aiming

rotate @n[type=minecraft:armor_stand,tag=flying_sword_init] facing entity @p[tag=aiming]
scoreboard players set @e[type=armor_stand,tag=flying_sword_init] cursefight_mob_spell_tick 0
tag @e[type=armor_stand,tag=flying_sword_init] remove flying_sword_init
playsound minecraft:block.amethyst_block.break hostile @a[distance=..25] ~ ~ ~ 5 1.5

execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^0.0 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^0.3 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^0.6 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^0.9 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^1.2 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^1.5 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^1.8 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^2.1 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^2.4 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^2.7 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^3.0 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^3.3 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^3.6 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^3.9 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^4.2 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^4.5 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^4.8 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^5.1 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^5.4 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^5.7 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^6.0 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^6.3 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^6.6 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^6.9 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^7.2 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^7.5 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^7.8 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^8.1 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^8.4 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^8.7 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^9.0 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^9.3 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^9.6 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^9.9 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^10.2 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^10.5 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^10.8 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^11.1 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^11.4 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^11.7 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^12.0 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^12.3 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^12.6 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^12.9 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^13.2 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^13.5 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^13.8 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^14.1 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^14.4 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^14.7 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^15.0 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^15.3 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^15.6 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^15.9 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^16.2 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^16.5 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^16.8 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^17.1 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^17.4 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^17.7 run particle minecraft:end_rod
execute positioned ~ ~0.5 ~ facing entity @p[tag=aiming] eyes positioned ^ ^ ^18.0 run particle minecraft:end_rod


tag @a[tag=aiming] remove aiming