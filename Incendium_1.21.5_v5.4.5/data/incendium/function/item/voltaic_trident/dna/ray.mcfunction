#execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] if score #hit in.fire_laser matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:hit_entity
scoreboard players add $distance in.fire_laser 1
execute if predicate incendium:random/70 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 0.01 0.01 0.01 0.0 1 force
execute if score #hit in.fire_laser matches 0 if score $distance in.fire_laser matches ..40 positioned ^ ^ ^0.1 rotated ~ ~ run function incendium:item/voltaic_trident/dna/ray
