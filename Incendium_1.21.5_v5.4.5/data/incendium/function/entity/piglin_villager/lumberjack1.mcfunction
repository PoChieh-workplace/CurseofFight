# from: entity/piglin_villager/init
# @s: village lumberjack

tag @s add in.checked

data modify entity @s CustomName set value {translate:"incendium.mob.village.lumberjack.name",fallback:"Village Lumberjack"}
data modify entity @s DeathLootTable set value "incendium:cvill/mob/lumberjack"
data modify entity @s CannotHunt set value 1b
data modify entity @s equipment.chest set value {count:1b, id:"minecraft:chainmail_chestplate", components:{damage:0}}
data modify entity @s equipment.mainhand set value {count:1b, id:"minecraft:golden_axe", components:{damage:0}}
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.2f, offhand:0.0f}


attribute @s armor base set 0
attribute @s armor_toughness base set 0
attribute @s attack_damage base set 0
attribute @s follow_range base set 16
attribute @s movement_speed base set 0.3499999940395355