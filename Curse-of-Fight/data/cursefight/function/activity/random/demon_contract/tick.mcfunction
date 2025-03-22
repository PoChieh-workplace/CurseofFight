# start
execute if score cursefight_activity_tick X matches 1 run scoreboard objectives add cursefight.activity.demon_contract.benefit dummy "惡魔契約利益"
execute if score cursefight_activity_tick X matches 1 run scoreboard objectives add cursefight.activity.demon_contract.curse dummy "惡魔契約詛咒"
execute if score cursefight_activity_tick X matches 1 run scoreboard objectives add cursefight.activity.demon_contract.lvl dummy "惡魔契約等級"
execute if score cursefight_activity_tick X matches 1 run scoreboard objectives add cursefight.activity.demon_contract.response trigger "回應契約"
execute if score cursefight_activity_tick X matches 1 run scoreboard players set @a cursefight.activity.demon_contract.response 0
execute if score cursefight_activity_tick X matches 1 run tag @a[tag=cursefight.alive] remove cursefight.activity.demon_contract.contract_read
execute if score cursefight_activity_tick X matches 1 run scoreboard players enable @a[tag=cursefight.alive] cursefight.activity.demon_contract.response
execute if score cursefight_activity_tick X matches 1 run tellraw @a ["",{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"【 ","color":"dark_gray"},{"text":"惡魔 ","color":"dark_red"},{"text":"契約 ","color":"dark_aqua"},{"text":"】","color":"dark_gray"},{"text":"\n你們收到一份來自掌控者的契約書，裡面寫著：","color":"white"},"「這裡面蘊含無法想像的",{"text":"力量","color":"dark_aqua"},"，但",{"text":"代價","color":"dark_red"},"，是你願意承擔的嗎？」，契約內容微微閃爍著暗紅光芒。",{"text":"你可以簽下它，或者…放下它","color":"gold"},"。"]
execute if score cursefight_activity_tick X matches 1 as @a[tag=cursefight.alive] at @s run summon ominous_item_spawner ^ ^1 ^1 {spawn_item_after_ticks:60,item:{id:"minecraft:paper",count:1,"components": {"minecraft:consumable": {"consume_seconds": 2,"animation": "block","sound": "minecraft:item.book.page_turn","has_consume_particles": false,"on_consume_effects": [{"type": "minecraft:play_sound","sound": "minecraft:particle.soul_escape"}]},"minecraft:custom_data": {"cursefight.activity.demon_contract.used": true},"minecraft:enchantments": {"levels": {"minecraft:vanishing_curse": 0}},"minecraft:lore": ["[\"\",{\"text\":\"使用後可以了解契約內容，並決定是否簽訂契約，按下 \",\"italic\":false,\"color\":\"dark_purple\"},{\"keybind\":\"key.use\",\"color\":\"green\"},{\"text\":\" 來查看，\",\"italic\":false,\"color\":\"dark_purple\"}]","[\"\",{\"text\":\"閱讀後仍可決定是否簽下契約，但一人僅能查看一次契約\",\"italic\":false,\"color\":\"dark_purple\"}]"],"minecraft:custom_name": "[\"\",{\"text\":\"【 惡魔契約書 】\",\"italic\":false,\"color\":\"dark_red\"}]","minecraft:custom_model_data": {"strings": ["demon_contract_paper"],"floats": [724022]}}}}
execute if score cursefight_activity_tick X matches 1 run bossbar add cursefight.activity.run "和平使者"
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run max 2000
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color red
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:entity.evoker.prepare_summon neutral @s

# bossbar_1
execute if score cursefight_activity_tick X matches 1..2000 run scoreboard players set cursefight_activity_sec X 2000
execute if score cursefight_activity_tick X matches 1..2000 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 1..2000 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 1..2000 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 1..2000 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A74\u00A7l惡魔 \u00A73\u00A7l契約 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒考慮時間"}]

execute if score cursefight_activity_tick X matches 1 run title @a times 10t 1s 0t
execute if score cursefight_activity_tick X matches 1 run title @a title "\u00A78—《 \u00A74\u00A7l惡魔 \u00A73\u00A7l契約 \u00A78》—"
execute if score cursefight_activity_tick X matches 1 run title @a subtitle "\u00A77力量與代價"

execute if score cursefight_activity_tick X matches 21 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 21 run title @a title "\u00A78—《  \u00A74\u00A7l惡魔 \u00A73\u00A7l契約  \u00A78》—"
execute if score cursefight_activity_tick X matches 21 run title @a subtitle "\u00A77力量與代價"

execute if score cursefight_activity_tick X matches 31 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 31 run title @a title "\u00A78—《 \u00A74\u00A7l惡魔 \u00A73\u00A7l契約 \u00A78》—"
execute if score cursefight_activity_tick X matches 31 run title @a subtitle "\u00A77力量與代價"

execute if score cursefight_activity_tick X matches 41 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 41 run title @a title "\u00A78—《  \u00A74\u00A7l惡魔 \u00A73\u00A7l契約  \u00A78》—"
execute if score cursefight_activity_tick X matches 41 run title @a subtitle "\u00A77力量與代價"

execute if score cursefight_activity_tick X matches 51 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 51 run title @a title "\u00A78—《 \u00A74\u00A7l惡魔 \u00A73\u00A7l契約 \u00A78》—"
execute if score cursefight_activity_tick X matches 51 run title @a subtitle "\u00A77力量與代價"

execute if score cursefight_activity_tick X matches 61 run title @a times 0t 1s 1s
execute if score cursefight_activity_tick X matches 61 run title @a title "\u00A78—《  \u00A74\u00A7l惡魔 \u00A73\u00A7l契約  \u00A78》—"
execute if score cursefight_activity_tick X matches 61 run title @a subtitle "\u00A77力量與代價"

execute if score cursefight_activity_tick X matches 1..2000 as @a[tag=cursefight.alive] if score @s cursefight.activity.demon_contract.response matches 1..2 run function cursefight:activity/random/demon_contract/reply
# end
execute if score cursefight_activity_tick X matches 2001.. run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_tick X matches 2001.. run scoreboard objectives remove cursefight.activity.demon_contract.benefit
execute if score cursefight_activity_tick X matches 2001.. run scoreboard objectives remove cursefight.activity.demon_contract.curse
execute if score cursefight_activity_tick X matches 2001.. run scoreboard objectives remove cursefight.activity.demon_contract.lvl
execute if score cursefight_activity_tick X matches 2001.. run scoreboard objectives remove cursefight.activity.demon_contract.response
execute if score cursefight_activity_tick X matches 2001.. run scoreboard players reset cursefight_activity_temp X
execute if score cursefight_activity_tick X matches 2001.. run scoreboard players reset cursefight_activity_tick X