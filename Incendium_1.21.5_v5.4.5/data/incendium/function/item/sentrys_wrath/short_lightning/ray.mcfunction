execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] if score #distance in.fire_laser matches 10.. positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:item/sentrys_wrath/short_lightning/hit_entity_chain
scoreboard players add #distance in.fire_laser 1
#execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #incendium:airs run summon minecraft:firework_rocket ~ ~0.2 ~ {Silent:true,Motion:[0.0,-0.2,0.0],ShotAtAngle:true,LifeTime:0,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[65535]}]}}}}

execute if predicate incendium:random/50 run particle minecraft:soul_fire_flame ~ ~ ~ 0.01 0.01 0.01 0.0 1 force
#execute if score #hit in.fire_laser matches 0 if predicate incendium:5_percent if score #distance in.fire_laser matches ..15 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/sentrys_wrath/short_lightning/branch
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/20 if score #distance in.fire_laser matches ..40 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/sentrys_wrath/short_lightning/branch
execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches ..40 positioned ^ ^ ^0.2 rotated ~ ~ run function incendium:item/sentrys_wrath/short_lightning/ray
