execute if entity @s[team=white] at @s run tag @a[team=white,distance=..20] add queen_skill
execute if entity @s[team=red] at @s run tag @a[team=red,distance=..20] add queen_skill
execute if entity @s[team=blue] at @s run tag @a[team=blue,distance=..20] add queen_skill
execute if entity @s[team=yellow] at @s run tag @a[team=yellow,distance=..20] add queen_skill
execute if entity @s[team=green] at @s run tag @a[team=green,distance=..20] add queen_skill
execute if entity @s[team=aqua] at @s run tag @a[team=aqua,distance=..20] add queen_skill
execute if entity @s[team=gray] at @s run tag @a[team=gray,distance=..20] add queen_skill
execute if entity @s[team=gold] at @s run tag @a[team=gold,distance=..20] add queen_skill
execute if entity @s[team=dark_red] at @s run tag @a[team=dark_red,distance=..20] add queen_skill
execute if entity @s[team=dark_blue] at @s run tag @a[team=dark_blue,distance=..20] add queen_skill
execute if entity @s[team=dark_purple] at @s run tag @a[team=dark_purple,distance=..20] add queen_skill
execute if entity @s[team=dark_aqua] at @s run tag @a[team=dark_aqua,distance=..20] add queen_skill
execute if entity @s[team=dark_green] at @s run tag @a[team=dark_green,distance=..20] add queen_skill
execute if entity @s[team=dark_gray] at @s run tag @a[team=dark_gray,distance=..20] add queen_skill
execute if entity @s[team=light_purple] at @s run tag @a[team=light_purple,distance=..20] add queen_skill

execute if items entity @s weapon.offhand minecraft:iron_ingot run effect give @a[tag=queen_skill] minecraft:saturation 60 1
execute if items entity @s weapon.offhand minecraft:iron_ingot run clear @s minecraft:iron_ingot 1
execute if items entity @s weapon.offhand minecraft:copper_ingot run effect give @a[tag=queen_skill] minecraft:haste 60 1
execute if items entity @s weapon.offhand minecraft:copper_ingot run clear @s minecraft:copper_ingot 1
execute if items entity @s weapon.offhand minecraft:gold_ingot run effect give @a[tag=queen_skill] minecraft:absorption 60 1
execute if items entity @s weapon.offhand minecraft:gold_ingot run clear @s minecraft:gold_ingot 1
execute if items entity @s weapon.offhand minecraft:lapis_lazuli run effect give @a[tag=queen_skill] minecraft:luck 60 1
execute if items entity @s weapon.offhand minecraft:lapis_lazuli run clear @s minecraft:lapis_lazuli 1
execute if items entity @s weapon.offhand minecraft:redstone run effect give @a[tag=queen_skill] minecraft:fire_resistance 60 0
execute if items entity @s weapon.offhand minecraft:redstone run clear @s minecraft:redstone 1
execute if items entity @s weapon.offhand minecraft:diamond run effect give @a[tag=queen_skill] minecraft:regeneration 30 0
execute if items entity @s weapon.offhand minecraft:diamond run clear @s minecraft:diamond 1
execute if items entity @s weapon.offhand minecraft:emerald run effect give @a[tag=queen_skill] minecraft:resistance 30 0
execute if items entity @s weapon.offhand minecraft:emerald run clear @s minecraft:emerald 1

tag @a remove queen_skill

# 120