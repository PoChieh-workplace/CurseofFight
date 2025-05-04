# from: entity/mobs/init
# @s: withered scientist

data modify entity @s CustomName set value {translate:"incendium.mob.misc.scientist.name",fallback:"Withered Scientist"}

effect give @s strength infinite 1 true
effect give @s resistance infinite 0 true

tag @s add in.checked
team join in.noname @s