execute at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^4 {Tags:["direction"]}

summon tnt ~ ~ ~ {Tags:["projectile"],fuse:100}

data modify entity @e[type=tnt,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

tag @n[tag=projectile] remove projectile
kill @n[tag=direction]