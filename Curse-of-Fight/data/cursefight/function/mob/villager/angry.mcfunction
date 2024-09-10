data merge entity @s {Gossips:[{Type:"major_negative",Value:10,Target:[I;5,5,5,5]}]}
execute at @s run data modify entity @s Gossips[].Target set from entity @p[distance=..16] UUID
damage @s 0 minecraft:wither by @p[distance=..6]