execute if score playerlist refresh_settings matches 1 run function vanilla_refresh:player/playerlist/gamemode
execute unless score playerlist refresh_settings matches 1 run function vanilla_refresh:player/playerlist/dimension

tellraw @s [{"text": " "}]


execute unless score $online refresh_members matches 1 run tellraw @s [{"text": "","color": "green"},{"text": "There are currently ","color": "gray"},{"score":{"name":"$online","objective": "refresh_members"}},{"text": " players "},{"translate":"online","color": "gray"}]
execute if score $online refresh_members matches 1 run tellraw @s [{"text": "","color": "green"},{"text": "There is currently ","color": "gray"},{"score":{"name":"$online","objective": "refresh_members"}},{"text": " player "},{"translate":"online","color": "gray"}]

execute unless score $allmembers refresh_members matches 1 run tellraw @s [{"text": "","color": "green"},{"text": "A total of ","color": "gray"},{"score":{"name":"$allmembers","objective": "refresh_members"}},{"translate":" players "},{"translate":"ever joined the game","color": "gray"}]
execute if score $allmembers refresh_members matches 1 run tellraw @s [{"text": "","color": "green"},{"text": "You're the only player to ever join this world","color": "gray"}]


tellraw @s [{"text": " "}]



scoreboard players set @s playerlist 0

#playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1