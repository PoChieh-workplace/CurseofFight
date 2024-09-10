kill @e[tag=ships.boatai.target]
kill @e[tag=ships.boatai.turn]
kill @e[tag=ships.boatai.patrol.find]


#ship entity cannot join raid
execute as @e[tag=ships.illager,nbt={CanJoinRaid:1b},limit=1,sort=random] run data modify entity @s CanJoinRaid set value 0b

#gamerules
function ships:default_gamerules



#boat
scoreboard players remove @e[type=#ships:uses_boat,scores={ships.boat.cooldown=-99..}] ships.boat.cooldown 1
scoreboard players reset @e[type=#ships:uses_boat,scores={ships.boat.cooldown=..1},predicate=!ships:on_boat] ships.boat.cooldown

execute if score Game ships.boat.count > Game ships.gamerule.boatlimit run kill @e[tag=ships.boat,limit=1,sort=random]
execute unless score Game ships.boat.count > Game ships.gamerule.boatlimit as @e[type=#ships:uses_boat,predicate=ships:boat_space,predicate=!ships:on_boat,limit=1,sort=random] unless score @s ships.boat.cooldown matches 0.. at @s positioned ~ ~1.1 ~ unless predicate ships:water at @s run function ships:boat/spawn
execute if entity @e[tag=ships.boat] run function ships:boat/main
execute as @e[tag=ships.boatai.lock,predicate=!ships:on_boat] run kill @s

#ship
#summon marker ~ ~ ~ {Tags:["ships.spawner"],data:{center:0}}
execute as @e[tag=ships.spawner,nbt={data:{center:0}}] at @s run data modify entity @s data.center set from entity @s Pos
