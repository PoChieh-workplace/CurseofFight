
execute at @s run playsound minecraft:entity.evoker.cast_spell player @a[distance=..32]
execute at @s run tellraw @a[distance=..32] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"selector":"@s"},{"text":"：","color":"dark_gray"},{"text":"土之術 - 天坑！","color":"gold"}]}
execute at @s run function cursefight:particle/career/miner_skill
execute at @s run setblock ~ ~-1 ~ air
execute at @s run summon minecraft:blaze ~ ~5 ~ {CustomName:'[{"text":"土之術核心","color":"gold"}]',Tags:["miner"],NoAI:1b,DeathLootTable:"minecraft:empty",Health:10,attributes:[{id:"generic.max_health",base:10f}]}