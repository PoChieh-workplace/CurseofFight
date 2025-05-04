# from: entity/mobs/init
# @s: torte

data modify entity @s CustomName set value {translate:"incendium.mob.quartz.torte.name",fallback:"Torte","color":"#8dd2e8"}

loot replace entity @s weapon.mainhand loot incendium:artifact/tool/cake_batter
effect give @s strength infinite 2
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.50f, offhand:0.50f}

tag @s add in.checked