# kill fireballs lmao

execute as @e[type=fireball,tag=in.shulker] run data merge entity @s {Motion:[0.0,-6.0,0.0],acceleration_power:-1.0}
execute as @e[type=small_fireball,tag=in.shulker] run data merge entity @s {Motion:[0.0,-6.0,0.0],acceleration_power:-1.0}
