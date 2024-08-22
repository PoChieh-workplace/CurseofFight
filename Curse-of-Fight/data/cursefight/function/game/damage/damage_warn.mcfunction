scoreboard players operation @s damage_warn /= const10 X
scoreboard players operation @s cursefight_health = @s health
tellraw @a[gamemode=spectator] {"text":"Curse of Fight >>> ","color":"#CA8EFF","bold":false,"extra":[{"selector":"@s"},{"text":" 受到 ","color":"white"},{"score":{"name":"@s","objective":"damage_warn"},"color":"gold"},{"text":" 點傷害！！","color":"white"},{"text":"剩餘 ","color":"white"},{"score":{"name":"@s","objective":"cursefight_health"},"color":"aqua"},{"text":" 點血量","color":"white"}]}
scoreboard players set @s damage_warn 0