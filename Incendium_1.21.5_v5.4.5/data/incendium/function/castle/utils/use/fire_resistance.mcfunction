effect give @s fire_resistance 180 0
playsound minecraft:entity.generic.drink player @a[distance=..30] ~ ~ ~ 2 0.7 0.6
item replace entity @s weapon.mainhand with glass_bottle
tag @s add in.chose_action
tag @s remove in.fire_resistance
tag @s remove in.mainhand_item
