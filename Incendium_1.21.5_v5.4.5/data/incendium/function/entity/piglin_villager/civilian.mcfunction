# from: entity/piglin_villager/init
# @s: piglin civilian

tag @s add in.checked

data modify entity @s CustomName set value {translate:"incendium.mob.village.civilian.name",fallback:"Piglin Civilian"}
data modify entity @s CannotHunt set value 1b
data remove entity @s equipment
data modify entity @s equipment.feet set value {count:1b, id:"minecraft:leather_boots", components:{damage:0}}
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.0f, offhand:0.0f}


attribute @s armor base set 0
attribute @s armor_toughness base set 0
attribute @s attack_damage base set 0
attribute @s follow_range base set 16
attribute @s movement_speed base set 0.3499999940395355