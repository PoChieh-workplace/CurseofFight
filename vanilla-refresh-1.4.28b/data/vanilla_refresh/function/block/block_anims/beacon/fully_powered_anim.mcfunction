

tp @s ~ ~ ~ ~10 ~

execute rotated ~180 -80 positioned ~ ~ ~ positioned ^ ^ ^2 run particle trial_spawner_detection_ominous ~ ~ ~ ^ ^ ^10000000000000 0.00000000000005 0 force @a[distance=..32]
execute rotated ~ -80 positioned ~ ~ ~ positioned ^ ^ ^2 run particle trial_spawner_detection_ominous ~ ~ ~ ^ ^ ^10000000000000 0.00000000000005 0 force @a[distance=..32]

scoreboard players add @s refresh_count 1

execute if score @s refresh_count matches ..30 run particle trial_spawner_detection_ominous ~ ~.5 ~ .3 0 .3 .05 10 force @a[distance=..64]
execute if score @s refresh_count matches 11..20 run particle end_rod ~ ~.5 ~ 0 0 0 .3 12 force @a[distance=..32]
#execute if score @s refresh_count matches 4..7 run particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]
#execute if score @s refresh_count matches 8..11 run particle flash ~ ~ ~ 0 0 0 0 2 force @a[distance=..32]
#execute if score @s refresh_count matches 12..15 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]

execute if score @s refresh_count matches 6 positioned ~ ~-.4 ~ run function vanilla_refresh:block/block_anims/beacon/wave_particle4_init
execute if score @s refresh_count matches 11 positioned ~ ~-.4 ~ run function vanilla_refresh:block/block_anims/beacon/wave_particle4_init