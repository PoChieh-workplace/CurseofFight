# from: entity/piglin_villager/init
# @s: village guard

tag @s add in.checked

data modify entity @s CustomName set value {translate:"incendium.mob.village.guard.name",fallback:"Village Guard"}
data modify entity @s DeathLootTable set value "incendium:cvill/mob/guard"
data modify entity @s CannotHunt set value 1b
data modify entity @s equipment set value {feet:{count:1b, id:"minecraft:leather_boots", components:{damage:0}}, legs:{count:1b, id:"minecraft:leather_leggings", components:{damage:0}}, chest:{count:1b, id:"minecraft:golden_chestplate", components:{damage:0}}, head:{count:1b, id:"minecraft:leather_helmet", components:{damage:0}}}
data modify entity @s equipment.mainhand set value {count:1b, id:"minecraft:wooden_axe", components:{damage:0}}
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.0f, offhand:0.0f}


attribute @s armor base set 0
attribute @s armor_toughness base set 0
attribute @s attack_damage base set 0
attribute @s follow_range base set 16
attribute @s movement_speed base set 0.3499999940395355