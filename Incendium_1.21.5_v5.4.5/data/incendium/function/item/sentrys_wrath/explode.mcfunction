# from: ./marker
# @s: marker

execute positioned ~ ~0.1 ~ rotated 0 -90 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 0 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 90 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 180 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 270 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 315 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 45 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 135 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 180 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 225 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 0 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 90 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 180 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 270 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 315 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 45 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 135 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 180 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 225 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 0 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 90 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 180 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 270 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 315 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 45 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 135 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 180 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute positioned ~ ~0.1 ~ rotated 225 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray

effect give @e[type=#incendium:mobs,distance=..4.5] instant_damage 1 2

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..40] ~ ~ ~ 1.0 2.0 0.8
playsound minecraft:entity.wither.break_block player @a[distance=..40] ~ ~ ~ 1 0.85 0.7
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..40] ~ ~ ~ 1.0 0.5 0.8

summon minecraft:firework_rocket ~ ~0.1 ~ {Silent:true,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'large_ball',has_twinkle:false,has_trail:false,colors:[65535]},{shape:'large_ball',has_twinkle:false,has_trail:false,colors:[51455]},{shape:'large_ball',has_twinkle:false,has_trail:false,colors:[38655]},{shape:'large_ball',has_twinkle:false,has_trail:false,colors:[25855]},{shape:'large_ball',has_twinkle:false,has_trail:false,colors:[13055]},{shape:'large_ball',has_twinkle:false,has_trail:false,colors:[255]}]}}},Tags:["in.sentrys_wrath_firework"]}

execute as @e[type=firework_rocket,tag=in.sentrys_wrath_firework,tag=!in.checked,distance=..20] run function incendium:misc/firework

execute as @e[type=#incendium:mobs_no_player,distance=..8] at @s run function incendium:item/sentrys_wrath/kick

kill @s[type=marker]
