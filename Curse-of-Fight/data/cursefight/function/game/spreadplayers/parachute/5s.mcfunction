execute as @e[type=allay,tag=parachute_allay] run playsound minecraft:item.elytra.flying ambient @a[distance=..10] ~ ~ ~ 100 0.1

execute if entity @e[type=allay,tag=parachute_allay] run schedule function cursefight:game/spreadplayers/parachute/5s 5s