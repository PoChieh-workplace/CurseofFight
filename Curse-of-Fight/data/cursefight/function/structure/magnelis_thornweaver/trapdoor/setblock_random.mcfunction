execute store result score @s cursefight_temp run random value 1..8

execute if score @s cursefight_temp matches 1 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=north,powered=false] replace
execute if score @s cursefight_temp matches 2 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=north,powered=true] replace
execute if score @s cursefight_temp matches 3 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=south,powered=false] replace
execute if score @s cursefight_temp matches 4 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=south,powered=true] replace
execute if score @s cursefight_temp matches 5 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=west,powered=false] replace
execute if score @s cursefight_temp matches 6 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=west,powered=true] replace
execute if score @s cursefight_temp matches 7 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=east,powered=false] replace
execute if score @s cursefight_temp matches 8 run setblock ~ ~ ~ minecraft:lever[face=floor,facing=east,powered=true] replace