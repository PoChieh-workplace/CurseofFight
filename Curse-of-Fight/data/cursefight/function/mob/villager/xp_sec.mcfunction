execute store result score @s villager_xp run data get entity @n[type=minecraft:villager,distance=..5] Xp 1
scoreboard players add @s villager_xp 5
execute store result entity @n[type=minecraft:villager,distance=..5] Xp int 1 run scoreboard players get @s villager_xp