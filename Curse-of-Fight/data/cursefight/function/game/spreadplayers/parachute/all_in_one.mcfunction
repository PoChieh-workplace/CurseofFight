tp @a[team=!black] @n[tag=border_center]
execute at @n[tag=border_center] run summon minecraft:allay ~ ~ ~ {Tags:["custom_mob","parachute","parachute_allay","way_to_center"],Health:1000,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"max_health",base:1000f}],active_effects:[{id:fire_resistance,duration:999999,show_particles:0b}]}
execute as @a[team=!black] run ride @s mount @n[type=minecraft:allay,tag=parachute_allay]

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

schedule function cursefight:game/spreadplayers/parachute/init 5t