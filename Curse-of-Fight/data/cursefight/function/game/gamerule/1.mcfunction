# 1_gamerule_main_page

tellraw @s ["",{"text":"✦====----------","color":"white"},{"text":" Curse","color":"dark_red"},{"text":" of ","color":"gray"},{"text":"Fight ","color":"dark_gray"},{"text":"----------====✦","color":"white"}]
tellraw @s ["",{"text":"選擇一項類別設定：","color":"gold"},{"text":"重置所有設定","color":"gray","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 2"},"hover_event":{"action":"show_text","value": {"text":"恢復 Curse of Fight 個人所有設定為預設值","color":"white"}}}]
tellraw @s [""]
tellraw @s ["",{"text":"          ","color":"gold"},{"text":"【說明書】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 100"},"hover_event":{"action":"show_text","value": {"text":"索取各種遊戲說明書","color":"white"}}},{"text":"    ","color":"gold"},{"text":"【Cof 設定】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 200"},"hover_event":{"action":"show_text","value": {"text":"設定遊戲進行時的各類提示","color":"white"}}}]
tellraw @s ["",{"text":"          ","color":"gold"},{"text":"【遊戲資訊】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 300"},"hover_event":{"action":"show_text","value": {"text":"查看已知的公共資訊","color":"white"}}},{"text":"    ","color":"gold"},{"text":"【狀態顯示】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 400"},"hover_event":{"action":"show_text","value": {"text":"設定遊戲進行時的各類提示","color":"white"}}}]


tellraw @s ["",{"text":"✦====----------------------------------------====✦","color":"white"}]
