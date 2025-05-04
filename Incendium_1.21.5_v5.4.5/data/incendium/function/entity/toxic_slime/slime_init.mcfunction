# from: entity/mobs/init
# @s: toxic slime

data modify entity @s CustomName set value {translate:"incendium.mob.misc.toxic.name",fallback:"Toxic Slime","color":"green"}
team join in.noname @s

attribute @s movement_speed base set 1.1
attribute @s max_health base set 1

effect give @s fire_resistance infinite 0 true
effect give @s slow_falling infinite 0 true
effect give @s jump_boost infinite 3 true
effect give @s speed infinite 3 true
effect give @s resistance infinite 3 true

tag @s add in.checked
tag @s add in.ticking_entity
scoreboard players set @s in.lifetime 150

data modify entity @s DeathLootTable set value 'incendium:entity/toxic_slime'