# 1_gamerule_main_page

tellraw @s ["",{"text":"✦====----------","color":"white"},{"text":" Curse","color":"dark_red"},{"text":" of ","color":"gray"},{"text":"Fight ","color":"dark_gray"},{"text":"----------====✦","color":"white"}]
tellraw @s ["",{"text":"選擇一項類別設定：","color":"gold"},{"text":"【重置所有設定】","color":"gray","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 2"},"hoverEvent":{"action":"show_text","value": {"text":"恢復 Curse of Fight 個人所有設定為預設值","color":"white"}}}]
tellraw @s ["",{"text":"          ","color":"gold"},{"text":"【說明書】","color":"green","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 100"},"hoverEvent":{"action":"show_text","value": {"text":"索取各種遊戲說明書","color":"white"}}},{"text":"    ","color":"gold"},{"text":"【提示設定】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 200"},"hoverEvent":{"action":"show_text","value": {"text":"設定遊戲進行時的各類提示","color":"white"}}}]
tellraw @s ["",{"text":"          ","color":"gold"},{"text":"【提示】","color":"green","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 300"},"hoverEvent":{"action":"show_text","value": {"text":"索取各種遊戲說明書","color":"white"}}},{"text":"    ","color":"gold"},{"text":"【提示設定】","color":"blue","click_event":{"action":"run_command","command":"/trigger cursefight.gamerule.cursefight set 200"},"hoverEvent":{"action":"show_text","value": {"text":"設定遊戲進行時的各類提示","color":"white"}}}]


tellraw @s ["",{"text":"✦====----------------------------------------====✦","color":"white"}]
