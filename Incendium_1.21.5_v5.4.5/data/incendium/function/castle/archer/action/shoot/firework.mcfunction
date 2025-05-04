# > action: archer shoots firework

# firework manipulation
summon minecraft:firework_rocket ~ ~1 ~ {Tags:["in.castle_firework_init"],Silent:0b,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:50,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[6710886]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[3355443]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[0]}]}}}}

execute positioned ~ ~1.5 ~ as @e[type=firework_rocket,distance=..1,tag=in.castle_firework_init,limit=1] at @s run function incendium:castle/archer/action/shoot/firework_init

# audiovisual
playsound minecraft:item.crossbow.shoot player @a[distance=..40] ~ ~ ~ 2 0.9 0.05

function incendium:castle/archer/action/disengage
tag @s add in.chose_action