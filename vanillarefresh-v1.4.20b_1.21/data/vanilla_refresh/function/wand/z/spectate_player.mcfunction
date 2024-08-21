
#execute unless score temp refresh_count matches -2147483648.. run function vanilla_refresh:wand/z/used



tag @s add refresh_spectator

execute as @s[gamemode=!spectator] run particle poof ~ ~1 ~ .3 .5 .3 .05 20 force @a[distance=..64]
execute as @s[gamemode=!spectator] run playsound entity.shulker_bullet.hit player @a[distance=..20] ~ ~ ~ 1 .7




tp @s @r[gamemode=!spectator,distance=8..]

execute at @s run playsound block.beacon.activate player @s ~ ~ ~ 100 1

tellraw @s [{"translate": ""}]


gamemode spectator @s

execute at @s if entity @p[gamemode=!spectator] run tellraw @s [{"translate":"Now spectating ","color":"gray"},{"selector":"@p[gamemode=!spectator]","color":"green"}]
execute at @s unless entity @p[gamemode=!spectator] run tellraw @s [{"translate":"Now spectating ","color":"gray"},{"translate":"...no one?","color":"gray"}]

#night vision
tellraw @s [{"translate": ""}]
tellraw @s[tag=refresh_nightvision] [{"translate": "-> ","color": "gray"},{"translate": "Random Player","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_player"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}},{"translate": "   -> ","color": "gray"},{"translate": "Night Vision: Enabled","underlined": true,"color": "green","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_night_vision0"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]
tellraw @s[tag=!refresh_nightvision] [{"translate": "-> ","color": "gray"},{"translate": "Random Player","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_player"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}},{"translate": "   -> ","color": "gray"},{"translate": "Night Vision: Disabled","underlined": true,"color": "red","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_night_vision1"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]





tellraw @s [{"translate": ""}]
execute at @s run tellraw @s [{"translate": "-> ","color": "gray"},{"translate": "World Spawn","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_worldspawn"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]

tellraw @s [{"translate": ""}]
execute at @s run tellraw @s [{"translate": "-> ","color": "gray"},{"translate": "Appear","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_appear"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]

tellraw @s [{"translate": ""}]



advancement revoke @s only vanilla_refresh:wand/teleport_spectate
