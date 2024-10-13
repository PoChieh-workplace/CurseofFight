execute at @n[tag=border_center] if score _worldborder.range_ info matches 128 run spreadplayers ~ ~ 78 80 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 256 run spreadplayers ~ ~ 98 100 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 384 run spreadplayers ~ ~ 178 180 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 512 run spreadplayers ~ ~ 238 240 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 640 run spreadplayers ~ ~ 298 300 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 768 run spreadplayers ~ ~ 348 350 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 896 run spreadplayers ~ ~ 478 480 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1024 run spreadplayers ~ ~ 548 550 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1152 run spreadplayers ~ ~ 598 600 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1280 run spreadplayers ~ ~ 668 670 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1408 run spreadplayers ~ ~ 698 700 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1536 run spreadplayers ~ ~ 748 750 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1664 run spreadplayers ~ ~ 848 850 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1792 run spreadplayers ~ ~ 898 900 true @n[type=minecraft:allay,tag=parachute]
execute at @n[tag=border_center] if score _worldborder.range_ info matches 1920 run spreadplayers ~ ~ 948 950 true @n[type=minecraft:allay,tag=parachute]


# forceload chunks
execute as @a[team=!black] at @s run forceload add ~-1 ~-1 ~1 ~1

function cursefight:game/spreadplayers/parachute/5s
schedule function cursefight:game/spreadplayers/parachute/5t 5t