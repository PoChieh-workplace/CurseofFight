scoreboard players set #hit in.fire_laser 0
execute at @s positioned ~ ~1 ~ run summon minecraft:firework_rocket ~ ~ ~ {Silent:true,Motion:[0.0,0.0,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[16777215]}]}}},Tags:["in.firework"]}
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..7] ~ ~ ~ 1.5 1

function incendium:item/voltaic_trident/explode/lightning/kick
tag @s add laser
