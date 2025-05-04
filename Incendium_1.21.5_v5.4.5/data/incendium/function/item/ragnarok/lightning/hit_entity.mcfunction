scoreboard players set #hit in.fire_laser 0
tag @s add laser

execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Silent:true,Motion:[0.0,-0.25,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[10483711]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10476799]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10994687]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10991615]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[9603583]}]}}},Tags:["in.firework"]}

data modify entity @s[type=creeper] powered set value 1b

execute if predicate incendium:random/other/x if predicate incendium:random/other/x if predicate incendium:random/50 run summon lightning_bolt
