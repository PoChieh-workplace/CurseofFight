# from (adv): incendium:technical/inventory/sentrys_wrath

tellraw @s [{translate:"incendium.item.sentrys_wrath.name",fallback:"Sentry's Wrath", "color": "#33ccff", "bold": true}, " ", {translate:"incendium.system.shatter",fallback:"has shattered after being used on a Grindstone"}]

clear @s crossbow[custom_data={incendium:{item:'sentrys_wrath'}}, repair_cost=0] 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/sentrys_wrath/explode
advancement revoke @s only incendium:technical/inventory/sentrys_wrath requirement
