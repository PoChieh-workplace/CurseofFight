# from: ./fireball
# @s: fireball

data modify storage incendium:temp player.UUID set from entity @s Owner

summon firework_rocket ~ ~ ~ {Silent:true,NoGravity:0b,Life:0,LifeTime:0,Motion:[0.0,0.5,0.0],Tags:["d1","cluster","in.holy_wrath_firework"],FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:'burst',colors:[16777215],fade_colors:[16774502]},{shape:'burst',colors:[16774502],fade_colors:[16777215]}]}}}}

execute as @e[type=firework_rocket,tag=in.holy_wrath_firework,tag=!in.checked,limit=1,distance=..1] run function incendium:misc/firework

execute as @e[type=#incendium:mobs_no_player,distance=..2,tag=!in.sanctum_guardian] run function incendium:item/patron/holy_wrath/kick

kill @s
