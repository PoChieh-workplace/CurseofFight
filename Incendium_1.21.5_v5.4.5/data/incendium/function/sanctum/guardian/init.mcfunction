# from: mob/init
# @s: sanctum pillager


data modify entity @s CustomName set value {translate:"incendium.mob.sanctum.guardian.name",fallback:"Sanctum Guardian", "color": "#DAA520"}
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:40.0f, offhand:40.0f}
data modify entity @s equipment set value {feet:{id:"minecraft:golden_boots", count:1b, components: {enchantments: {'minecraft:blast_protection':15}}}, legs:{id:"minecraft:iron_leggings", count:1b, components: {enchantments: {'minecraft:blast_protection':15}}}, chest:{id:"minecraft:iron_chestplate", count:1b, components: {enchantments: {'minecraft:blast_protection':15}}}, head:{id:"minecraft:netherite_helmet", count:1b, components: {enchantments: {'minecraft:blast_protection':15}}}}
data modify entity @s PersistenceRequired set value 1b
loot replace entity @s weapon.mainhand loot incendium:artifact/patron/holy_wrath

tag @s add in.ticking_entity
effect give @s fire_resistance infinite 2 true
