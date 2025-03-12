execute store result score @s cursefight_temp run random value 1..3
execute if score @s cursefight_temp matches 1..2 run summon minecraft:spider ~ ~ ~ {attributes:[{id:scale,base:0.4f}]}
execute if score @s cursefight_temp matches 3 run summon minecraft:cave_spider ~ ~ ~ {attributes:[{id:scale,base:0.7f}]}
playsound minecraft:block.honey_block.slide block @a[distance=..8] ~ ~ ~ 1 0.6 1
playsound minecraft:entity.turtle.egg_crack block @a[distance=..8] ~ ~ ~ 0.2 1 0.2
kill @s