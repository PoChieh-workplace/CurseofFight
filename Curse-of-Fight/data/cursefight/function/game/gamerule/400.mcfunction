# 100_documentation

tellraw @s ["",{"text":"✦====----------","color":"white"},{"text":" Curse","color":"dark_red"},{"text":" of ","color":"gray"},{"text":"Fight ","color":"dark_gray"},{"text":"----------====✦","color":"white"}]
tellraw @s ["",{"text":"顯示狀態：","color":"gold"}]
tellraw @s [""]
tellraw @s ["",{"text":"      "},{"text":"【基本數值】","color":"green"}]

execute store result score #cursefight.temp1 cursefight_temp run attribute @s minecraft:armor get
execute store result score #cursefight.temp2 cursefight_temp run attribute @s minecraft:armor_toughness get
execute store result score #cursefight.temp3 cursefight_temp run attribute @s minecraft:attack_damage get
tellraw @s ["",{"text":"   "},{"text":"盔甲值","color":"dark_gray"},{"text":"：","color":"gray"},{"score":{"name":"#cursefight.temp1","objective":"cursefight_temp"},"color":"green"},{"text":"   "},{"text":"盔甲強度","color":"dark_gray"},{"text":"：","color":"gray"},{"score":{"name":"#cursefight.temp2","objective":"cursefight_temp"},"color":"green"},{"text":"   "},{"text":"攻擊力","color":"red"},{"text":"：","color":"gray"},{"score":{"name":"#cursefight.temp3","objective":"cursefight_temp"},"color":"green"}]

execute store result score #cursefight.temp1 cursefight_temp run attribute @s minecraft:max_health get
execute store result score #cursefight.temp2 cursefight_temp run attribute @s minecraft:jump_strength get
execute store result score #cursefight.temp3 cursefight_temp run attribute @s minecraft:luck get
tellraw @s ["",{"text":"   "},{"text":"最大血量","color":"dark_gray"},{"text":"：","color":"gray"},{"score":{"name":"#cursefight.temp1","objective":"cursefight_temp"},"color":"green"},{"text":"   "},{"text":"跳躍強度","color":"green"},{"text":"：","color":"gray"},{"score":{"name":"#cursefight.temp2","objective":"cursefight_temp"},"color":"green"},{"text":"   "},{"text":"幸運值","color":"green"},{"text":"：","color":"gray"},{"score":{"name":"#cursefight.temp3","objective":"cursefight_temp"},"color":"green"}]



tellraw @s ["",{"text":"【","color":"gray"},{"text":"惡魔","color":"red","hover_event":{"action":"show_text","value": {"text":"浪潮事件效果","color":"white"}}},{"text":" 契約","color":"dark_blue","hover_event":{"action":"show_text","value": {"text":"浪潮事件效果","color":"white"}}},{"text":"】","color":"gray"},{"text":"：","color":"gray"}]
tellraw @s [""]
tellraw @s ["",{"text":"【返回】","color":"gray","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 1"},"hover_event":{"action":"show_text","value": {"text":"回到設定首頁","color":"white"}}}]
tellraw @s ["",{"text":"✦====----------------------------------------====✦","color":"white"}]
