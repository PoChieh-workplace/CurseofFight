execute if predicate cursefight:chance/3 run tag @s add strong_phantom

execute if entity @s[tag=strong_phantom] at @s run summon potion ~ ~1 ~ {Item:{id:splash_potion,components:{potion_contents:{custom_color:10329495,custom_effects:[{id:slowness,duration:400,amplifier:4},{id:weakness,duration:400,amplifier:0},{id:blindness,duration:400,amplifier:0}]}}}}
execute if entity @s[tag=strong_phantom] at @s run ride @n[type=potion,distance=..3] mount @s
execute if entity @s[tag=strong_phantom] at @s run ride @n[type=minecraft:creeper,tag=!stronging] mount @n[type=potion,distance=..3]
execute if entity @s[tag=strong_phantom] run tag @n[type=minecraft:creeper,tag=!stronging,distance=..3] add stronging

tag @s add with_creeper