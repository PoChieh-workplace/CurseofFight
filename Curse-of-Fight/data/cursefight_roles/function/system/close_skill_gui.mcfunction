scoreboard players set @s cursefight.skills.opened 0

clear @s minecraft:barrier
execute if items entity @s hotbar.6 minecraft:air run item replace entity @s hotbar.6 from entity @s enderchest.6
execute if items entity @s hotbar.7 minecraft:air run item replace entity @s hotbar.7 from entity @s enderchest.7
execute if items entity @s hotbar.8 minecraft:air run item replace entity @s hotbar.8 from entity @s enderchest.8

setblock 0 319 0 minecraft:green_shulker_box
execute unless items entity @s hotbar.6 minecraft:air at @s run item replace block 0 319 0 container.0 from entity @s enderchest.6
execute unless items entity @s hotbar.7 minecraft:air at @s run item replace block 0 319 0 container.1 from entity @s enderchest.7
execute unless items entity @s hotbar.8 minecraft:air at @s run item replace block 0 319 0 container.2 from entity @s enderchest.8
loot give @s mine 0 319 0
setblock 0 319 0 air
