

playsound entity.experience_orb.pickup player @s ~ ~ ~ 1
tag @s remove refresh_nightvision
effect clear @s night_vision

#########################




tellraw @s [{"translate": ""}]

tellraw @s [{"translate":"Disabled ","color":"gray"},{"translate":"Night Vision","color":"yellow"}]

#night vision
tellraw @s [{"translate": ""}]
tellraw @s[tag=refresh_nightvision] [{"translate": "-> ","color": "gray"},{"translate": "Random Player","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_player"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}},{"translate": "   -> ","color": "gray"},{"translate": "Night Vision: Enabled","underlined": true,"color": "green","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_night_vision0"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]
tellraw @s[tag=!refresh_nightvision] [{"translate": "-> ","color": "gray"},{"translate": "Random Player","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_player"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}},{"translate": "   -> ","color": "gray"},{"translate": "Night Vision: Disabled","underlined": true,"color": "red","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_night_vision1"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]





tellraw @s [{"translate": ""}]
execute at @s run tellraw @s [{"translate": "-> ","color": "gray"},{"translate": "World Spawn","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_worldspawn"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]

tellraw @s [{"translate": ""}]
execute at @s run tellraw @s [{"translate": "-> ","color": "gray"},{"translate": "Appear","underlined": true,"color": "#5ba3f5","clickEvent":{"action": "run_command","value": "/function vanilla_refresh:wand/z/spectate_appear"},"hoverEvent": {"action": "show_text","value":{"translate": "Click to run this command"}}}]

tellraw @s [{"translate": ""}]



advancement revoke @s only vanilla_refresh:wand/spectate_disappear