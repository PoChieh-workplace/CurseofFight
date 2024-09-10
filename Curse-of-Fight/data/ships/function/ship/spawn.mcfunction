data modify entity @s Pos set from entity @s data.center
execute at @s run spreadplayers ~ ~ 1 16 false @s
execute at @s if block ~ ~-1 ~ #ships:entity_spawn_in run tp @s ~ ~-1 ~
execute at @s if block ~ ~-3 ~ minecraft:air if block ~ ~-2 ~ minecraft:air unless block ~ ~-4 ~ #ships:entity_cannot_spawn_on run tp @s ~ ~-3 ~
execute at @s if block ~ ~-4 ~ minecraft:air if block ~ ~-3 ~ minecraft:air unless block ~ ~-5 ~ #ships:entity_cannot_spawn_on run tp @s ~ ~-4 ~
execute at @s if entity @p[distance=0..16,gamemode=!spectator] run return 0
execute at @s if block ~ ~-1 ~ #ships:entity_cannot_spawn_on run return 0
execute at @s if entity @e[type=#minecraft:raiders,distance=0..5] run return 0
execute unless score Game ships.gamerule.fleetdespawn matches 1 at @s if predicate ships:vindicator_spawn_chance run place template ships:entities/vindicator ~ ~ ~ none none 0
execute if score Game ships.gamerule.fleetdespawn matches 1 at @s if predicate ships:vindicator_spawn_chance run place template ships:entities/vindicator_despawn ~ ~ ~ none none 0
execute at @s if entity @e[type=#minecraft:raiders,distance=0..5] run return 0
execute unless score Game ships.gamerule.fleetdespawn matches 1 at @s run place template ships:entities/pillager ~ ~ ~ none none 0
execute if score Game ships.gamerule.fleetdespawn matches 1 at @s run place template ships:entities/pillager_despawn ~ ~ ~ none none 0
data modify entity @s Pos set from entity @s data.center