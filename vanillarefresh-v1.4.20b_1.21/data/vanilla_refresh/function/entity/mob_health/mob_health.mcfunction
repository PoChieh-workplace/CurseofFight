
#player
execute as @n[distance=0.001..5,type=!#vanilla_refresh:misc,tag=!refresh_entity_misc,predicate=!vanilla_refresh:condition/spectator] as @s[type=player] as @p run title @s[tag=!1_splatus_actionbar_disabled_2] actionbar [{"translate":"","color": "yellow"},{"selector":"@n[distance=0.001..5,type=!#vanilla_refresh:misc,tag=refresh_entity_exists,tag=!refresh_entity_misc,predicate=!vanilla_refresh:condition/spectator]"},{"translate": " - ","color": "gray"},{"translate": "vanillarefresh.health","color":"red"},{"score":{"name": "@e[distance=0.001..5,type=!#vanilla_refresh:misc,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","objective": "refresh_player_health"}},{"translate": "/"},{"score":{"name": "@e[distance=0.001..5,type=!#vanilla_refresh:misc,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","objective": "refresh_maxhealth"}}]

#any other mob
execute as @n[distance=0.001..5,type=!#vanilla_refresh:misc,tag=!refresh_entity_misc,predicate=!vanilla_refresh:condition/spectator] as @s[type=!villager,type=!ender_dragon,type=!player] as @p run title @s[tag=!1_splatus_actionbar_disabled_2] actionbar [{"translate":"","color": "yellow"},{"selector":"@e[distance=0.001..5,type=!#vanilla_refresh:misc,type=!player,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","color": "green"},{"translate": " - ","color": "gray"},{"translate": "vanillarefresh.health","color":"red"},{"score":{"name": "@e[distance=0.001..5,type=!#vanilla_refresh:misc,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","objective": "refresh_health"}},{"translate": "/"},{"score":{"name": "@e[distance=0.001..5,type=!#vanilla_refresh:misc,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","objective": "refresh_maxhealth"}}]

#dragon
execute as @n[distance=0.001..5,type=!#vanilla_refresh:misc,predicate=!vanilla_refresh:condition/spectator] if data entity @s[type=ender_dragon] DragonPhase as @p run title @s[tag=!1_splatus_actionbar_disabled_2] actionbar [{"translate":"","color": "yellow"},{"selector":"@e[distance=0.001..5,type=ender_dragon,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","color": "green"},{"translate": " - ","color": "gray"},{"translate": "vanillarefresh.health","color":"red"},{"score":{"name": "@e[distance=0.001..5,type=ender_dragon,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","objective": "refresh_health"}},{"translate": "/"},{"score":{"name": "@e[distance=0.001..5,type=ender_dragon,tag=refresh_entity_exists,tag=!refresh_entity_misc,sort=nearest,limit=1]","objective": "refresh_maxhealth"}}]

#villager, cause HELPFUL INFO!!! yehahhahshhsa
execute as @n[distance=0.001..5,type=!#vanilla_refresh:misc,tag=!refresh_entity_misc] as @s[type=villager] run function vanilla_refresh:entity/mob_health/mob_health_villager




execute if entity @e[distance=0.001..5,type=!#vanilla_refresh:misc,tag=!refresh_entity_misc,gamemode=!spectator] run tag @s add 1_splatus_actionbar_disabled

