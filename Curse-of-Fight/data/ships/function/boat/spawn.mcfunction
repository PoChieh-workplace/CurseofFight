#gamerule
execute store result score Game ships.boat.count if entity @e[type=#ships:uses_boat,predicate=ships:on_boat]
execute if score Game ships.boat.count >= Game ships.gamerule.boatlimit run return 1
scoreboard players add Game ships.boat.count 1

tag @e[type=minecraft:boat] add ships.boatai.spawned
tag @e[type=minecraft:marker] add ships.boatai.spawned
scoreboard players set @s ships.boat.cooldown 20
execute positioned ~ ~1 ~ unless predicate ships:water at @s align y run summon boat ~ ~.5 ~ {Rotation:[0.0F,0.0F],Invulnerable:1b,Tags:["ships.boat"]}
execute positioned ~ ~1 ~ if predicate ships:water at @s align y run summon boat ~ ~1.5 ~ {Rotation:[0.0F,0.0F],Invulnerable:1b,Tags:["ships.boat"]}

execute summon minecraft:marker run function ships:boat/patrol/set
summon minecraft:marker ~ ~ ~ {Tags:["ships.boatai.lock"]}
data modify entity @e[type=minecraft:boat,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
ride @s mount @e[type=minecraft:boat,limit=1,sort=nearest,tag=!ships.boatai.spawned]
ride @e[tag=ships.boatai.boat,limit=1,sort=nearest,tag=!ships.boatai.spawned] mount @e[type=minecraft:boat,limit=1,sort=nearest,tag=!ships.boatai.spawned]
ride @e[tag=ships.boatai.lock,limit=1,sort=nearest,tag=!ships.boatai.spawned] mount @e[type=minecraft:boat,limit=1,sort=nearest,tag=!ships.boatai.spawned]
tag @e[tag=ships.boatai.spawned] remove ships.boatai.spawned


