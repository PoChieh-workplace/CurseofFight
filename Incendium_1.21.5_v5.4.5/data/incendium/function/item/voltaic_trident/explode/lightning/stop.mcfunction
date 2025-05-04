scoreboard players set #distance in.fire_laser 1000
scoreboard players set #distance2 in.fire_laser 1000
execute positioned ~ ~0.1 ~ run summon minecraft:firework_rocket ~ ~ ~ {Silent:true,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[16777215]}]}}}}
data modify entity @e[type=firework_rocket,distance=..4,limit=1,sort=nearest] Owner set from entity @s data.player.UUID
tag @s add laser
