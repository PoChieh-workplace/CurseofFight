summon minecraft:marker ~ ~ ~ {Tags:["ships.boatai.patrol.find"]}
tag @s add ships.boatai.patrol.selected
data modify storage ships:boat ai set from entity @s data.PatrolTarget
execute as @e[tag=ships.boatai.patrol.find] at @s run function ships:boat/patrol/find2
tag @s remove ships.boatai.patrol.selected