# 隨機分隊
# setblock ~ ~ ~ oak_wall_sign[facing=north]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function cursefight:system/teamsort"}}','{"text":"隨機分隊","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}
# 重置分隊
# setblock ~ ~ ~ oak_wall_sign[facing=north]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run team leave @a[team=!black]"}}','{"text":"重置隊伍","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}
# 加入觀察者
# setblock ~ ~ ~ oak_wall_sign[facing=north]{"is_waxed":true,"front_text":{"messages":['""','{"text":"加入觀察者","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"team join black @s"}}','{"text":" ","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}}
# 離開觀察者
# setblock ~ ~ ~ oak_wall_sign[facing=north]{"is_waxed":true,"front_text":{"messages":['""','{"text":"離開觀察者","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"team leave @s[team=black]"}}','{"text":" ","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}}


execute if score _teamcount_ info matches 2.. run team join red @r[team=]
execute if score _teamcount_ info matches 2.. run team join blue @r[team=]
execute if score _teamcount_ info matches 3.. run team join yellow @r[team=]
execute if score _teamcount_ info matches 4.. run team join green @r[team=]
execute if score _teamcount_ info matches 5.. run team join aqua @r[team=]
execute if score _teamcount_ info matches 6.. run team join gray @r[team=]
execute if score _teamcount_ info matches 7.. run team join gold @r[team=]
execute if score _teamcount_ info matches 8.. run team join dark_red @r[team=]
execute if score _teamcount_ info matches 9.. run team join dark_green @r[team=]
execute if score _teamcount_ info matches 10.. run team join dark_gray @r[team=]
execute if score _teamcount_ info matches 11.. run team join light_purple @r[team=]
execute if score _teamcount_ info matches 12.. run team join dark_purple @r[team=]
execute if score _teamcount_ info matches 13.. run team join dark_aqua @r[team=]
execute if entity @a[team=] run function cursefight:system/teamsort
