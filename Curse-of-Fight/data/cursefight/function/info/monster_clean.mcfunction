# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function cursefight:info/monster_clean"}}','{"text":"清除怪物時間","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"score":{"name":"_monster_clean_","objective":"info"},"color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _monster_clean_ info 10
execute if score _monster_clean_ info matches 130.. run scoreboard players set _monster_clean_ info 0

particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

execute if score _monster_clean_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"不清除","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
execute unless score _monster_clean_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"_monster_clean_","objective":"info"},"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'