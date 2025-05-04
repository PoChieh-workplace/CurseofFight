# from: entity/baby_ghast/pre_init
# @s: ghastling body 

attribute @s minecraft:scale base set 0.1
effect give @s fire_resistance infinite 0 true

data modify entity @s PersistenceRequired set value 1b
data modify entity @s Silent set value 1b
data modify entity @s NoAI set value 1b
data modify entity @s[type=ghast] Invulnerable set value 1b
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.0f, offhand:0.0f}

scoreboard players set @s in.lifetime 20
scoreboard players set @s in.timer 20

tag @s add in.ticking_entity