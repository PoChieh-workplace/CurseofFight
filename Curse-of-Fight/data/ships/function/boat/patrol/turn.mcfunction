execute on passengers run tag @s[type=minecraft:marker,tag=ships.boatai.boat] add ships.boatai.patrol.selected
execute at @s positioned ^ ^ ^1 rotated as @e[tag=ships.boatai.patrol.selected,limit=1] positioned ^ ^ ^.2 facing entity @s feet positioned as @s rotated ~180 0 run tp @s ~ ~ ~ ~ ~
tag @e remove ships.boatai.patrol.selected

#execute if loaded ~ ~ ~ run summon minecraft:marker ~ ~ ~ {Tags:["ships.boatai.patrol.turn"]}
#data modify entity @e[limit=1,tag=ships.boatai.patrol.turn,sort=nearest] Pos set from entity @e[limit=1,tag=ships.boatai.boat,sort=nearest] data.patrolpoint

#execute on passengers if entity @s[tag=ships.boatai.boat] at @s run data modify entity @e[tag=ships.boatai.patrol.turn,limit=1,sort=nearest] Pos[1] set from entity @s Pos[1]
#execute on passengers if entity @s[tag=ships.boatai.boat] at @s if entity @e[tag=ships.boatai.patrol.turn,distance=0..3] run function ships:boat/patrol/find

#execute at @e[tag=ships.boatai.patrol.turn] run particle soul_fire_flame
#execute positioned ^ ^ ^1 facing entity @e[tag=ships.boatai.patrol.turn,limit=1,sort=nearest] eyes positioned ^ ^ ^.2 facing entity @s eyes rotated ~180 0 positioned as @s run tp @e[tag=ships.boatai.patrol.turn,limit=1,sort=nearest] ~ ~ ~ ~ ~
#data modify entity @s Rotation[0] set from entity @e[tag=ships.boatai.patrol.turn,limit=1,sort=nearest] Rotation[0]

#kill @e[tag=ships.boatai.patrol.turn]


