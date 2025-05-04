# from (adv): incendium:technical/inventory/firestorm

tellraw @s [{translate:"incendium.item.firestorm.name",fallback:"Firestorm", "color": "#ff4400", "bold": true}, " ", {translate:"incendium.system.shatter",fallback:"has shattered after being used on a Grindstone"}]

clear @s crossbow[custom_data~{incendium:{item:'firestorm'}}, repair_cost=0] 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/firestorm/ray/start
advancement revoke @s only incendium:technical/inventory/firestorm
