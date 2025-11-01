particle effect ^ ^.5 ^1.5 ~ ~-10000000000000 ~ 0 0 normal

execute if predicate vanilla_refresh:chance/2_percent run playsound block.beacon.ambient block @a[distance=..32] ~ ~ ~ 3 1



tp @s ~ ~ ~ ~5 ~



#=##################################################################
# level 4




#=## ENBTER fully powered
execute if entity @s[tag=!refresh_entity_blockanim_beacon_fullypowered] if block ~ ~ ~ beacon{Levels:4} run function vanilla_refresh:block/block_anims/beacon/fully_powered_init
execute if score @s refresh_count matches 0..31 run function vanilla_refresh:block/block_anims/beacon/fully_powered_anim

#=## ENTER powered
execute if entity @s[tag=!refresh_entity_blockanim_beacon_powered] if block ~ ~ ~ beacon{Levels:4} run function vanilla_refresh:block/block_anims/beacon/powered_init
execute if score @s refresh_count matches 100..131 run function vanilla_refresh:block/block_anims/beacon/powered_anim

## fully powered

#particle thingies that fly up like spirits
execute unless data storage vanilla_refresh_config:config config{blockanims_beacon2:0} as @e[type=marker,tag=refresh_entity_blockanim_beacon] at @s if entity @p[distance=..96] if block ~ ~ ~ beacon{Levels:4} run function vanilla_refresh:block/block_anims/beacon/thingies

# swirling effect
execute if block ~ ~ ~ beacon{Levels:4} run particle effect ^ ^.5 ^-1.5 ~ ~-10000000000000 ~ 0 0 normal

# particles at max level
execute if score @s refresh_count matches 30.. if score second refresh_clock matches 1 if block ~ ~ ~ beacon{Levels:4} positioned ~ ~-.4 ~ run function vanilla_refresh:block/block_anims/beacon/wave_particle_less_init

#ambient sounds at max level
execute unless data storage vanilla_refresh_config:config config{blockanims_beacon_sound:0} if block ~ ~ ~ beacon{Levels:4} if predicate vanilla_refresh:chance/3_percent run playsound block.beacon.ambient block @a[distance=..10] ~ ~ ~ .7 1.5 .5
