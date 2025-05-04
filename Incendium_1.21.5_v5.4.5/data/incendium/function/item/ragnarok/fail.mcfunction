# from ./shot
# @s: player

tellraw @s [{translate:"incendium.item.ragnarok.name",fallback:"Ragnarok", "color": "#CCEBDB", "bold": true}, " ", {translate:"incendium.item.ragnarok.system.fail",fallback:"cannot be rapid fired", "color":"#ABC4B8", "bold": false}]

summon minecraft:firework_rocket ~ ~1 ~ {Silent:true,Motion:[0.0,-0.25,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[10483711]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10476799]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10994687]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[10991615]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[9603583]}]}}},Tags:["in.ragnarok_firework"]}

playsound item.trident.thunder player @a[distance=..16] ~ ~ ~ 2 2
playsound item.trident.thunder player @a[distance=..16] ~ ~ ~ 2 .1

summon lightning_bolt

particle minecraft:flash ~ ~ ~ 0 0 0 10 10 force
