# from ./shot
# @s: player

tellraw @s [{translate:"incendium.item.trailblazer.name",fallback:"Trailblazer", "color": "#F7823E", "bold": true}, " ", {translate:"incendium.item.trailblazer.system.fail",fallback:"requires a fully drawn back bow to function", "color":"#C46731", "bold": false}]

execute anchored eyes run summon firework_rocket ^ ^ ^0.25 {LifeTime:1,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:'small_ball',has_twinkle:true,has_trail:false,colors:[11743532,15435844],fade_colors:[14602026,15435844]},{shape:'small_ball',has_twinkle:true,has_trail:false,colors:[11743532,15435844],fade_colors:[14602026,15435844]}]}}}}
execute anchored eyes run summon firework_rocket ^ ^ ^0.25 {LifeTime:1,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:'small_ball',has_twinkle:true,has_trail:false,colors:[11743532,15435844],fade_colors:[14602026,15435844]},{shape:'small_ball',has_twinkle:true,has_trail:false,colors:[11743532,15435844],fade_colors:[14602026,15435844]}]}}}}

summon small_fireball ~ ~1.25 ~ {Motion:[0.0d,-0.9d,0.0d],acceleration_power:-0.1d}
execute anchored eyes run summon small_fireball ^ ^0.25 ^0.5 {Motion:[0.0d,-0.9d,0.0d],acceleration_power:-0.1d}
execute anchored eyes run summon small_fireball ^ ^0.25 ^-0.5 {Motion:[0.0d,-0.9d,0.0d],acceleration_power:-0.1d}
execute anchored eyes run summon small_fireball ^0.5 ^0.25 ^ {Motion:[0.0d,-0.9d,0.0d],acceleration_power:-0.1d}
execute anchored eyes run summon small_fireball ^-0.5 ^0.25 ^ {Motion:[0.0d,-0.9d,0.0d],acceleration_power:-0.1d}

kill @e[type=#arrows,tag=!in.checked,distance=..3]

playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 0.25 1.69
