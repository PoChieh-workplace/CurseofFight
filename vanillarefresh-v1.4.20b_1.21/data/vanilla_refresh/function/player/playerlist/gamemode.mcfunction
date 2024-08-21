




execute if entity @a[gamemode=!spectator,gamemode=!creative,tag=!refresh_operator] run tellraw @s [{"text": " "}]

execute if entity @a[gamemode=!spectator,gamemode=!creative,tag=!refresh_operator] run tellraw @s [{"text": "Players: ","color": "yellow"},{"selector":"@a[gamemode=!spectator,gamemode=!creative,tag=!refresh_operator]","color": "gray"}]


################################################

execute if entity @a[gamemode=!spectator,gamemode=!creative,tag=refresh_operator] run tellraw @s [{"text": " "}]

execute if entity @a[gamemode=!spectator,gamemode=!creative,tag=refresh_operator] run tellraw @s [{"text": "Operators: ","color": "#fdff96"},{"selector":"@a[gamemode=!spectator,gamemode=!creative,tag=refresh_operator]","color": "gray"}]


################################################

################################################

execute if entity @a[gamemode=creative] run tellraw @s [{"text": " "}]

execute if entity @a[gamemode=creative] run tellraw @s [{"text": "Creative Mode: ","color": "#38ffee"},{"selector":"@a[gamemode=creative]","color": "gray"}]

################################################

execute if entity @a[gamemode=spectator] run tellraw @s [{"text": " "}]

execute if entity @a[gamemode=spectator] run tellraw @s [{"text": "Spectators: ","color": "#aba7db"},{"selector":"@a[gamemode=spectator]","color": "gray"}]

################################################

