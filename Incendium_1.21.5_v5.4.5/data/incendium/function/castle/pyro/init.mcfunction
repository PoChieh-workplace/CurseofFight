# from: ../mob/init
# @s: pyro

data modify entity @s CustomName set value {translate:"incendium.mob.castle.pyro.name",fallback:"Piglin Pyromancer"}

data modify entity @s equipment.legs.components append value {enchantments:{"blast_protection":3}}
data modify entity @s equipment.chest.components append value {enchantments:{"blast_protection":3}}

tag @s add in.activate_mid
