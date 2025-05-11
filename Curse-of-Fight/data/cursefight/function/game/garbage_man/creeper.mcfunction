execute store result score @s cursefight_temp run random value 1..3
execute if score @s cursefight_temp matches 1..3 run summon minecraft:creeper ~ ~ ~ {attributes:[{id:scale,base:0.4f}]}
kill @s