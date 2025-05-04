# from: entity/baby_ghast/pre_init
# @s: ghastling body (allay)

effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true

data modify entity @s PersistenceRequired set value 1b
data modify entity @s Silent set value 1b
data modify entity @s NoAI set value 1b
data modify entity @s drop_chances.head set value 0.0f
data remove entity @s equipment

scoreboard players set @s in.lifetime 20
scoreboard players set @s in.timer 20

tag @s add in.ticking_entity