title @s times 0t 1s 1s
execute if score @s refresh_player_dx matches -2147483648.. run title @s[tag=!1_splatus_actionbar_disabled,tag=!1_splatus_actionbar_disabled2] subtitle [{"translate": "","color": "yellow"},{"translate": "vanillarefresh.last_death","color": "aqua"},{"translate": " - ","color": "gray"},{"translate": "vanillarefresh.coordinates"},{"score":{"name": "@s","objective": "refresh_player_dx"}},{"translate": ", "},{"score":{"name": "@s","objective": "refresh_player_dy"}},{"translate": ", "},{"score":{"name": "@s","objective": "refresh_player_dz"}},{"translate": " - ","color": "gray"},{"nbt":"LastDeathLocation.dimension","entity":"@s"}]
execute unless score @s refresh_player_dx matches -2147483648.. run title @s[tag=!1_splatus_actionbar_disabled,tag=!1_splatus_actionbar_disabled2] subtitle [{"translate": "","color": "yellow"},{"translate": "vanillarefresh.last_death","color": "aqua"},{"translate": " - ","color": "gray"},{"translate": "No Death Located"}]
title @s title ""