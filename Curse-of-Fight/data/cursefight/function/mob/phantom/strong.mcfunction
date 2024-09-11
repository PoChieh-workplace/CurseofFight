execute as @e[type=minecraft:phantom,tag=!with_creeper,predicate=cursefight:player/can_see_sky] if predicate cursefight:chance/3 run tag @s add strong_phantom
execute as @e[type=minecraft:phantom,tag=!with_creeper,tag=strong_phantom] run ride @n[type=minecraft:creeper,tag=!stronging] mount @s
execute as @e[type=minecraft:phantom,tag=!with_creeper,tag=strong_phantom] run tag @n[type=minecraft:creeper,tag=!stronging] add stronging

tag @e[type=minecraft:phantom,tag=!with_creeper,predicate=cursefight:player/can_see_sky] add with_creeper