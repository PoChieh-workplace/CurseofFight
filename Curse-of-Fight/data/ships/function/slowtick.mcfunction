schedule function ships:slowtick 1s
#ship entity spawning
execute as @e[tag=ships.spawner,nbt=!{data:{center:0}}] at @s if loaded ~ ~ ~ if entity @e[type=minecraft:evoker,distance=0..64] run function ships:ship/spawn
#always patrol gamerule
execute if score Game ships.gamerule.alwayspatrol matches 1 run tag @e[type=#ships:uses_boat,tag=!ships.patrol] add ships.action.patrol