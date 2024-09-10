execute unless entity @e[tag=ships.boatai.move] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ships.boatai.move"]}
tp @e[tag=ships.boatai.move,limit=1,sort=nearest] @s
data modify storage ships:boat ai set from entity @s Motion
execute as @e[tag=ships.boatai.move,limit=1,sort=nearest] run function ships:boat/move
data modify entity @s Motion set from storage ships:boat ai