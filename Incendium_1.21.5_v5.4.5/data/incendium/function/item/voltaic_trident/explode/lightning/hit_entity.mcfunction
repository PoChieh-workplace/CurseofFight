scoreboard players set #hit in.fire_laser 0
tag @s add laser
#execute rotated as @s positioned ^ ^1 ^1 run summon minecraft:firework_rocket ~ ~ ~ {Silent:true,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:fire_charge,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[16777215]}]}}}}
#execute rotated as @s positioned ~0.5 ~1 ~0.5 run 
#execute as @e[distance=..4,limit=1] at @s facing entity @e[type=blaze,tag=sentry,tag=attacking,sort=nearest,limit=1,distance=..50] eyes run 
execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Silent:true,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[16777215]}]}}},Tags:["in.firework"]}
execute if entity @s[predicate=incendium:random/50,nbt={Fire:-20s}] run data merge entity @s {Fire:80s}

data modify entity @e[type=firework_rocket,tag=!in.checked,distance=..4,limit=1,sort=nearest] Owner set from storage incendium:temp player.UUID
