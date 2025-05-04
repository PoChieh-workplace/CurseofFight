# from: ../mob/init
# @s: paratrooper

data modify entity @s CustomName set value {translate:"incendium.mob.castle.paratrooper.name",fallback:"Piglin Paratrooper"}

data modify entity @s NoGravity set value 0b
data modify entity @s equipment.chest.components set value {custom_model_data:{floats:[1450602]}}

tag @s add in.activate_far
