


tellraw @s [{"text": " "}]

tellraw @s [{"translate":"Select a Gamerule Category ","color": "yellow"},{"translate": "              ","strikethrough": true},{"translate": "       "}]



tellraw @s [{"text": " "}]

tellraw @s [{"translate": "        ","color": "gray"},{"translate":"Minecraft Gamerules","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to Open"}]},"clickEvent":{"action":"run_command","value":"/trigger gamerules set 11"}},{"translate":"    "},{"translate":"ⓘ Value Info","hoverEvent": {"action": "show_text","contents":[{"text": "0 = Gamerule/setting is disabled\n1 = Gamerule/setting is enabled\n\nOther values mean the setting has more options than just enabled and disabled. (Next to the value, it'll describe what option is set)"}]}}]




tellraw @s [{"text": " "}]

tellraw @s [{"translate": "        ","color": "gray"},{"translate":"Vanilla Refresh","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to open"}]},"clickEvent":{"action":"run_command","value":"/trigger gamerules set 21"}},{"translate":"   "}]


tellraw @s [{"text": " "}]


#execute if score @s gamerules matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1



