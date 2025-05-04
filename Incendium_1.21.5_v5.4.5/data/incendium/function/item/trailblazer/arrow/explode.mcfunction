# from ./main
# @s: arrow
# makes a firework boom

execute anchored eyes run summon firework_rocket ~ ~0.25 ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:'small_ball',has_twinkle:true,has_trail:false,colors:[11743532,15435844],fade_colors:[14602026,15435844]},{shape:'small_ball',has_twinkle:true,has_trail:false,colors:[11743532,15435844],fade_colors:[14602026,15435844]}]}}}}

particle flame ~ ~ ~ .25 1.25 .25 .1 50 force
particle small_flame ~ ~ ~ .25 1.25 .25 .6 50 force

summon small_fireball ~ ~0.5 ~ {Motion:[0.0d,-0.9d,0.0d],acceleration_power:-0.1d}
kill @s
