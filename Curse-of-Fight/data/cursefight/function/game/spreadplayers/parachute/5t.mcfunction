# flying boots
item replace entity @a[team=!black] armor.feet with minecraft:diamond_boots[minecraft:glider={},minecraft:enchantments={"cursefight:generic/elytra/once":1,"cursefight:generic/curse/tick_breaking":1,"minecraft:binding_curse":1}]

# forceload chunks
execute as @a[team=!black] at @s run forceload remove ~-2 ~-2 ~2 ~2
execute as @e[tag=border_center] at @s run forceload add ~ ~

# allay facing center
execute as @e[type=allay,tag=parachute_allay] at @s facing entity @n[tag=border_center] feet rotated ~ 0 run tp @s ~ ~60 ~ facing ^ ^ ^1