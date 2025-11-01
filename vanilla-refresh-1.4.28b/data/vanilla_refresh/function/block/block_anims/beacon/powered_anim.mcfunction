
scoreboard players add @s refresh_count 1

execute if score @s refresh_count matches 120..130 run particle trial_spawner_detection_ominous ~ ~.5 ~ .3 0 .3 .01 5 force @a[distance=..64]