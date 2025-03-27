execute at @s if entity @s[tag=using_bow] if entity @a[tag=cursefight.alive,distance=..4] run item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:enchantments={"minecraft:sharpness": 1}]
execute at @s if entity @s[tag=using_bow] if entity @a[tag=cursefight.alive,distance=..4] run tag @s remove using_bow

execute at @s if entity @s[tag=!using_bow] unless entity @a[tag=cursefight.alive,distance=..4] run item replace entity @s weapon.mainhand with minecraft:bow[minecraft:enchantments={"minecraft:power": 1,"cursefight:generic/crossbow/sniper_for_mob": 2}]
execute at @s if entity @s[tag=!using_bow] unless entity @a[tag=cursefight.alive,distance=..4] run tag @s add using_bow

