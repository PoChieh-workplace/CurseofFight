# from: ../mob/init
# @s: blacksmith

data modify entity @s CustomName set value {translate:"incendium.mob.castle.blacksmith.name",fallback:"Piglin Blacksmith"}

attribute @s max_health base set 50
data merge entity @s {Health:50.0f}

data modify entity @s equipment.head set value {id:'minecraft:iron_helmet', count:1b}
data modify entity @s equipment.chest set value {id:'minecraft:netherite_chestplate', count:1b}
data modify entity @s equipment.legs set value {id:'minecraft:iron_leggings', count:1b}
data modify entity @s equipment.feet set value {id:'minecraft:iron_boots', count:1b}

tag @s add in.activate_mid
