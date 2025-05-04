# from: sanctum/mob/init
# @s: Sanctum Protector

data modify entity @s CustomName set value {translate:"incendium.mob.sanctum.protector.name",fallback:"Sanctum Protector"}

data modify entity @s equipment set value {mainhand:{id:"minecraft:iron_sword", count:1b, components: {damage: 0}}, offhand:{id:"minecraft:shield", count:1b, components: {damage: 0}}}