execute as @e[type=marker,tag=katter.raj.spawner] at @s if entity @e[type=player,distance=..16] run function kattersstructures:raj/summon_at_marker

execute store result storage kattersstructures:raj lightning_x int 1 run random value 5..16
execute store result storage kattersstructures:raj lightning_z int 1 run random value 5..16