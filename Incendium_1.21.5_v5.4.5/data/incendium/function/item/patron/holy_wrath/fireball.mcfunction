# from entity/main
# @s: cluster fireball

execute if entity @e[type=#incendium:mobs,distance=..3,tag=!in.sanctum_guardian] run function incendium:item/patron/holy_wrath/fireball_explode

particle end_rod ~ ~ ~ 0 0 0 0 1 force
