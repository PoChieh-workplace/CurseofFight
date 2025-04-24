# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function cursefight:info/mod"}}','{"text":"遊戲模式","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"經典模式","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _mode_ info 1
execute if score _mode_ info matches 2 run scoreboard players set _mode_ info 0

particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

execute if score _mode_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value {"text":"經典模式","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}
execute if score _mode_ info matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value {"text":"復甦模式","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}