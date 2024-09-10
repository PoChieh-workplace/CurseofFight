execute on controller on target at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ships.boatai.target"]}
#execute unless entity @e[tag=ships.boatai.move] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ships.boatai.move"],UUID: [I; -1749676208, -1994374703, -1688928836, 497361216]}
execute unless entity @e[tag=ships.boatai.move] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ships.boatai.move"]}
tp @e[tag=ships.boatai.move,limit=1,sort=nearest] @s
data modify storage ships:boat ai set from entity @s Motion
execute if entity @e[tag=ships.boatai.target,distance=6..,limit=1] as @e[tag=ships.boatai.move,limit=1,sort=nearest] run function ships:boat/move
execute if entity @e[tag=ships.boatai.target,distance=..5,limit=1] as @e[tag=ships.boatai.move,limit=1,sort=nearest] run function ships:boat/moveback
execute unless entity @e[tag=ships.boatai.target,distance=5..6,limit=1] run data modify entity @s Motion set from storage ships:boat ai
kill @e[tag=ships.boatai.target]