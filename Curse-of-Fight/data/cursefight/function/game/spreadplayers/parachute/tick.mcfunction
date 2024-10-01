
execute if entity @s[tag=way_to_center] at @s facing entity @n[tag=border_center] feet rotated ~ 0 positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction_parachute"]}
execute unless entity @s[tag=way_to_center] run execute at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction_parachute"]}
data modify entity @s Motion set from entity @n[type=marker,tag=direction_parachute] Pos
kill @e[type=marker,tag=direction_parachute]

execute at @s positioned over world_surface positioned ~ ~30 ~ if entity @s[dy=30] positioned as @s run data modify entity @s Motion[1] set value 1.0
execute at @s positioned over world_surface positioned ~ ~ ~ if entity @s[dy=30] positioned as @s run data modify entity @s Motion[1] set value 2.0
execute at @s positioned over world_surface positioned ~ ~-30 ~ if entity @s[dy=30] positioned as @s run data modify entity @s Motion[1] set value 3.0
execute at @s positioned over world_surface positioned ~ ~80 ~ if entity @s[dy=1000] positioned as @s run data modify entity @s Motion[1] set value -2.0


execute if predicate cursefight:no_passenger run kill @s

execute at @n[tag=border_center] positioned ~-10 ~ ~-10 if entity @s[dx=20,dz=20,dy=-300] run tag @s remove way_to_center