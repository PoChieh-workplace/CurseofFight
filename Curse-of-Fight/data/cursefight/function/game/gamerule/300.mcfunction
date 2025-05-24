# 100_documentation

tellraw @s ["",{"text":"✦====----------","color":"white"},{"text":" Curse","color":"dark_red"},{"text":" of ","color":"gray"},{"text":"Fight ","color":"dark_gray"},{"text":"----------====✦","color":"white"}]
tellraw @s ["",{"text":"選擇一項遊戲資訊說明：","color":"gold"}]
tellraw @s [""]
tellraw @s ["",{"text":"          ","color":"gold"},{"text":"【空投位置】","color":"green","click_event":{"action":"run_command","command":"/trigger airdrop_position"},"hoverEvent":{"action":"show_text","value": {"text":"查詢現有的空投位置","color":"white"}}},{"text":"    ","color":"gold"}]
tellraw @s [""]

tellraw @s ["",{"text":"✦====----------------------------------------====✦","color":"white"}]
