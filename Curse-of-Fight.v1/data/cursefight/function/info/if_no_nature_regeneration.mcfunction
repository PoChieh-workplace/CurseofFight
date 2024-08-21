# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function cursefight:info/if_no_nature_regeneration"}}','{"text":"自然回血","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"開啟","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _if_no_nature_regeneration_ info 1
execute if score _if_no_nature_regeneration_ info matches 2 run scoreboard players set _if_no_nature_regeneration_ info 0

execute if score _if_no_nature_regeneration_ info matches 0 run gamerule naturalRegeneration false
execute if score _if_no_nature_regeneration_ info matches 1 run gamerule naturalRegeneration true

particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

execute if score _if_no_nature_regeneration_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"關閉","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
execute if score _if_no_nature_regeneration_ info matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"開啟","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'