# 100_documentation

tellraw @s ["",{"text":"✦====----------","color":"white"},{"text":" Curse","color":"dark_red"},{"text":" of ","color":"gray"},{"text":"Fight ","color":"dark_gray"},{"text":"----------====✦","color":"white"}]
tellraw @s ["",{"text":"選擇一項設定：","color":"gold"}]
tellraw @s [""]
execute unless score @s cursefight.gamerule.player_info.tips matches 1 run tellraw @s ["",{"text":"          ","color":"gold"},{"text":"\uF001","font":"cursefight:icon","color":"white"},{"text":"【遊戲提示】","color":"blue","hover_event":{"action":"show_text","value": {"text":"遊戲進行期間每三分鐘會播報一次遊戲提示","color":"white"}}},{"text":"：","color":"gray"},{"text":"關","underlined":true,"color":"red","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 201"},"hover_event":{"action":"show_text","value": {"text":"點擊開啟","color":"green"}}}]
execute if score @s cursefight.gamerule.player_info.tips matches 1 run tellraw @s ["",{"text":"          ","color":"gold"},{"text":"\uF001","font":"cursefight:icon","color":"white"},{"text":"【遊戲提示】","color":"blue","hover_event":{"action":"show_text","value": {"text":"遊戲進行期間每三分鐘會播報一次遊戲提示","color":"white"}}},{"text":"：","color":"gray"},{"text":"開","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 202"},"hover_event":{"action":"show_text","value": {"text":"點擊關閉","color":"red"}}}]
tellraw @s [""]
tellraw @s ["",{"text":"【返回】","color":"gray","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 1"},"hover_event":{"action":"show_text","value": {"text":"回到設定首頁","color":"white"}}}]
tellraw @s ["",{"text":"✦====----------------------------------------====✦","color":"white"}]
