scoreboard players set #hit in.fire_laser 1
execute as @e[type=blaze,tag=in.sentry,distance=..5.5] run data merge entity @s {Invulnerable:1b}
execute as @e[type=#incendium:sentry_targets,sort=nearest,distance=..4] at @s facing entity @e[type=blaze,tag=in.sentry,tag=in.sentry_active,sort=nearest,limit=1,distance=..50] eyes run summon minecraft:firework_rocket ^ ^1.5 ^0.75 {Silent:true,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[4971507]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[4951795]}]}}}}
advancement grant @s only incendium:infernal_dunes/pipeline/unlimited_power

schedule function incendium:entity/sentry/clear_invulnerable 2t replace
