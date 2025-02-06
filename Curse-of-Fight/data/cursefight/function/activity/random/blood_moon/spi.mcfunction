effect give @s minecraft:speed infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true
data modify entity @s HandDropChances set value [0f,0f]
tag @s add cursefight.activity.blood_moon
execute if predicate cursefight:chance/2 run attribute @s minecraft:scale base set 0.4
execute if predicate cursefight:chance/3 run attribute @s minecraft:scale base set 0.65
execute if predicate cursefight:chance/2 at @s run summon minecraft:spider ~ ~ ~