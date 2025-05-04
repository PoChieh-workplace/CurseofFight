scoreboard players set #hit in.fire_laser 0
tag @s add laser

execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Silent:true,Motion:[0.0,-0.25,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[10483711]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10476799]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10994687]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10991615]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[9603583]}]}}},Tags:["in.firework"]}

data modify entity @s[type=creeper] powered set value 1b

execute at @s positioned ~ ~1 ~ if score #hit in.fire_laser matches 0 if predicate incendium:random/87 if score #distance2 in.fire_laser matches 0..3000 positioned ^ ^ ^0.2 facing entity @e[type=#incendium:mobs,tag=!laser,distance=..10,sort=nearest,limit=1] eyes if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch_straight

execute if predicate incendium:random/other/x if predicate incendium:random/other/x run summon lightning_bolt
