kill @e[type=#cursefight:hostile,distance=..100]
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 200 1
tag @n[type=minecraft:marker,distance=..20,tag=village_center] add village_protect
effect give @a[distance=..100] minecraft:hero_of_the_village 1800 5
effect give @e[type=minecraft:villager,distance=..100] minecraft:regeneration infinite 5
summon firework_rocket ~ ~5 ~ {Life:20,LifeTime:40,FireworksItem:{id:firework_rocket,components:{fireworks:{flight_duration:2,explosions:[{shape:creeper,has_twinkle:1b,has_trail:1b,colors:[I;6192150,16701501,11546150],fade_colors:[I;3847130]}]}}}}
advancement revoke @s only cursefight:game/village_border