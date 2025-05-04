# from player/main
# @s: player

# check if loaded crossbow has correct arrow type
execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/mainhand,predicate=!incendium:holding/loaded_spectral_arrow/mainhand,predicate=incendium:holding/holy_wrath]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{translate:"incendium.item.holy_wrath.name",fallback:"Holy Wrath", "color": "#ffee77", "bold": true}, " ", {translate:"incendium.system.only_load",fallback:"can only load", "color":"#ccbb88", "bold": false}, " ", {translate:"incendium.system.spectral",fallback:"Spectral Arrows", "color":"#ccbb88"}]
execute if score $failed in.dummy matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.5 1.25

execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/offhand,predicate=!incendium:holding/loaded_spectral_arrow/offhand,predicate=incendium:holding/holy_wrath]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.offhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.offhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{translate:"incendium.item.holy_wrath.name",fallback:"Holy Wrath", "color": "#ffee77", "bold": true}, " ", {translate:"incendium.system.only_load",fallback:"can only load", "color":"#ccbb88", "bold": false}, " ", {translate:"incendium.system.spectral",fallback:"Spectral Arrows", "color":"#ccbb88"}]
execute if score $failed in.dummy matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.5 1.25