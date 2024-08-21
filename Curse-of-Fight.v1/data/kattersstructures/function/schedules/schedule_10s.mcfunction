execute as @e[type=elder_guardian,tag=katter.raj.vehicle] at @s if predicate kattersstructures:percentages/30 run function kattersstructures:raj/area_lightning with storage kattersstructures:raj
execute as @e[type=player,nbt={FallFlying:1b}] at @s if entity @e[type=elder_guardian,tag=katter.raj.vehicle,distance=..24] run summon minecraft:lightning_bolt ~ ~ ~

schedule function kattersstructures:schedules/schedule_10s 10s