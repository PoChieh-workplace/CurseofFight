execute on controller on target at @s run summon minecraft:marker ~ ~ ~ {Tags:["ships.boatai.turn"]}
execute positioned ^ ^ ^1 facing entity @e[tag=ships.boatai.turn,limit=1,sort=nearest] eyes positioned ^ ^ ^.2 facing entity @s eyes rotated ~180 0 positioned as @s run tp @e[tag=ships.boatai.turn,limit=1,sort=nearest] ~ ~ ~ ~ ~
data modify entity @s Rotation[0] set from entity @e[tag=ships.boatai.turn,limit=1,sort=nearest] Rotation[0]
kill @e[tag=ships.boatai.turn]
