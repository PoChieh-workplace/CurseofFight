scoreboard players set @s cursefight_temp 37000

execute as @s if predicate cursefight:player/y140p run scoreboard players set @s cursefight_temp 28000
execute as @s if predicate cursefight:player/y170p run scoreboard players set @s cursefight_temp 20000
execute as @s if predicate cursefight:player/y200p run scoreboard players set @s cursefight_temp 12000
execute as @s if predicate cursefight:player/y230p run scoreboard players set @s cursefight_temp 1000
execute as @s if predicate cursefight:player/y260p run scoreboard players set @s cursefight_temp -10000

scoreboard players operation #temperature_balance cursefight_temp = @s cursefight.temperature.float
scoreboard players operation #temperature_balance cursefight_temp -= @s cursefight_temp
scoreboard players operation #temperature_balance cursefight_temp /= const100 X
scoreboard players operation #temperature_balance cursefight_temp /= const2 X
scoreboard players operation @s cursefight.temperature.float -= #temperature_balance cursefight_temp

scoreboard players operation @s cursefight.temperature = @s cursefight.temperature.float
scoreboard players operation @s cursefight.temperature /= const1000 X


execute if score @s cursefight.temperature.float matches 20000..30000 run effect give @s minecraft:mining_fatigue 5 0
execute if score @s cursefight.temperature.float matches 10000..19999 run effect give @s minecraft:mining_fatigue 5 1
execute if score @s cursefight.temperature.float matches ..9999 run effect give @s minecraft:mining_fatigue 5 2

execute if score @s cursefight.temperature.float matches 21000..27000 run effect give @s minecraft:slowness 5 0
execute if score @s cursefight.temperature.float matches 9000..21000 run effect give @s minecraft:slowness 10 1
execute if score @s cursefight.temperature.float matches ..8999 run effect give @s minecraft:slowness 10 2

execute if score @s cursefight.temperature.float matches ..6000 run effect give @s minecraft:darkness 10 0
execute if score @s cursefight.temperature.float matches ..2000 run effect give @s minecraft:nausea 10 0
execute if score @s cursefight.temperature.float matches ..-1000 execute unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] if score _ominous_ activity_set matches 1 run effect give @s minecraft:wither 10 0