# 100_documentation

tellraw @s ["",{"text":"✦====----------","color":"white"},{"text":" Curse","color":"dark_red"},{"text":" of ","color":"gray"},{"text":"Fight ","color":"dark_gray"},{"text":"----------====✦","color":"white"}]
tellraw @s ["",{"text":"顯示狀態：","color":"gold"}]
tellraw @s [""]
tellraw @s ["",{"text":"          ","color":"gold"},{"text":"【Josh 的食譜】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 101"},"hover_event":{"action":"show_text","value": {"text":"烹飪食藝","color":"white"}}},{"text":"    ","color":"gold"},{"text":"【Josh 的營養書】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 102"},"hover_event":{"action":"show_text","value": {"text":"飲食規劃","color":"white"}}}]
tellraw @s [""]
tellraw @s ["",{"text":"【返回】","color":"gray","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 1"},"hover_event":{"action":"show_text","value": {"text":"回到設定首頁","color":"white"}}}]
tellraw @s ["",{"text":"✦====----------------------------------------====✦","color":"white"}]
