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