execute at @s run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..16]
execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 100 2
execute at @s run function cursefight:particle/career/miner_skill

tag @s add miner_use_skill

execute if entity @s[team=white] at @s run effect give @a[tag=!miner_use_skill,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=red] at @s run effect give @a[team=!red,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=blue] at @s run effect give @a[team=!blue,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=yellow] at @s run effect give @a[team=!yellow,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=green] at @s run effect give @a[team=!green,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=aqua] at @s run effect give @a[team=!aqua,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=gray] at @s run effect give @a[team=!gray,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=gold] at @s run effect give @a[team=!gold,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=dark_red] at @s run effect give @a[team=!dark_red,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=dark_blue] at @s run effect give @a[team=!dark_blue,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=dark_purple] at @s run effect give @a[team=!dark_purple,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=dark_aqua] at @s run effect give @a[team=!dark_aqua,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=dark_green] at @s run effect give @a[team=!dark_green,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=dark_gray] at @s run effect give @a[team=!dark_gray,distance=..15] minecraft:slowness 5 2
execute if entity @s[team=light_purple] at @s run effect give @a[team=!light_purple,distance=..15] minecraft:slowness 5 2

tag @s remove miner_use_skill

effect give @s minecraft:speed 10 1
playsound block.beacon.ambient block @a[distance=..30] ~ ~ ~ 1 1.65
