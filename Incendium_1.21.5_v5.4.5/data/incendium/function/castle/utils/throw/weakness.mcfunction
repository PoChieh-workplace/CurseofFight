tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] eyes
summon splash_potion ~ ~1 ~ {Tags:["in.alchemist_potion","in.air_toggle"],NoGravity:1b,Glowing:0b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:splash_potion",count:1b,components:{potion_contents:{potion:'minecraft:weakness'}}}}

execute as @e[type=splash_potion,tag=in.alchemist_potion,tag=!in.checked,distance=..1] run function incendium:castle/utils/throw/near

playsound minecraft:entity.witch.throw player @a[distance=..30] ~ ~ ~ 4 0.7 0.85
item replace entity @s weapon.offhand with air

tag @s add in.chose_action
tag @s remove in.weakness
tag @s remove in.offhand_item
