execute at @n[tag=border_center] run summon minecraft:allay ~ ~ ~ {Tags:["custom_mob","parachute","parachute_allay","way_to_center"],Health:1000,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"max_health",base:1000f}],active_effects:[{id:fire_resistance,duration:999999,show_particles:0b}]}
execute as @a[team=!black] run ride @s mount @n[type=minecraft:allay,tag=parachute_allay]

function cursefight:game/spreadplayers/parachute/init