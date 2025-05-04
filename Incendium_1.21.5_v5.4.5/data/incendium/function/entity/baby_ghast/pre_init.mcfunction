# from: entity/mobs/init (egg)
# from: entity/other/init (tower)
# @s: unborn ghast

execute at @s run summon minecraft:ghast ~ ~ ~ {Invulnerable:true,attributes:[{base:0.1d, id:"scale"}],Tags:["in.baby_ghast"],Passengers:[{id:"minecraft:allay",Tags:["in.baby_head"]}]}
execute as @e[type=ghast,tag=in.baby_ghast,sort=nearest,limit=1,distance=..1] run function incendium:entity/baby_ghast/ghast_init
execute as @e[type=allay,tag=in.baby_head,sort=nearest,limit=1,distance=..1] run function incendium:entity/baby_ghast/allay_init

tp @s ~ -10 ~
kill @s