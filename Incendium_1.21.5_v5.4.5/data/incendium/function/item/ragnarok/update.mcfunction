# from ./using
# on_update



execute anchored eyes run particle minecraft:flash ^ ^-0.5 ^0.25 0 0 0 0 1 force @a[tag=!in.self,distance=..60]

execute if entity @s[scores={in.ragnarok=40}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 1.2

execute if entity @s[scores={in.ragnarok=80}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 1.3

execute if entity @s[scores={in.ragnarok=120}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 1.45

execute if entity @s[scores={in.ragnarok=160}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 1.65

execute if entity @s[scores={in.ragnarok=200}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 2
execute if entity @s[scores={in.ragnarok=200}] run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 2
execute if entity @s[scores={in.ragnarok=200}] run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 2

tag @s add in.ragnarok_fix
