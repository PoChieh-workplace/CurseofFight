# Curse of Fight 
# Name    : set.mcfunction 
# Author  : waterball
# path    : /activity/airdrop/
# func    : airdrop setup

execute if score _teamcount_ info matches 1.. run summon area_effect_cloud ~ ~ ~ {Tags:[airdrop,ad],Duration:200,particle:"block air"}
execute if score _teamcount_ info matches 7.. run summon area_effect_cloud ~ ~ ~ {Tags:[airdrop,ad],Duration:200,particle:"block air"}
execute if score _teamcount_ info matches 12.. run summon area_effect_cloud ~ ~ ~ {Tags:[airdrop,ad],Duration:200,particle:"block air"}


execute if score _now_worldborder_ info matches ..32 run spreadplayers ~ ~ 1 10 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 33..64 run spreadplayers ~ ~ 1 16 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 65..128 run spreadplayers ~ ~ 1 50 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 129..192 run spreadplayers ~ ~ 10 100 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 193..256 run spreadplayers ~ ~ 50 125 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 257..320 run spreadplayers ~ ~ 50 125 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 321..384 run spreadplayers ~ ~ 50 175 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 385..448 run spreadplayers ~ ~ 100 220 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 449..512 run spreadplayers ~ ~ 100 260 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 513..576 run spreadplayers ~ ~ 100 335 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 577..640 run spreadplayers ~ ~ 100 410 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 641..704 run spreadplayers ~ ~ 200 435 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 705..768 run spreadplayers ~ ~ 200 440 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 769..832 run spreadplayers ~ ~ 200 510 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 833..896 run spreadplayers ~ ~ 200 550 false @e[tag=airdrop,type=minecraft:area_effect_cloud]
execute if score _now_worldborder_ info matches 897..961 run spreadplayers ~ ~ 200 650 false @e[tag=airdrop,type=minecraft:area_effect_cloud]

execute positioned as @e[tag=airdrop] run forceload add ~ ~ ~ ~

title @a subtitle "\u00A78\u00A7l詛咒的能量外溢"
title @a title "\u00A78\u00A7kh \u00A73\u00A7l空投降落 \u00A78\u00A7kh"
title @a times 1s 3s 1s