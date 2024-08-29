execute if entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] run give @s minecraft:beacon
# summon falling_block ~ ~50 ~ {BlockState:{Name:beacon}}
execute if entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] run tellraw @s {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你正在召喚","color":"gray"},{"text":"移動式重生信標","color":"green"},{"text":" | ","color":"gray"},{"text":"請確保召喚點是淨空的！","color":"dark_red"}]}
execute if entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:glass destroy
execute if entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] run summon minecraft:marker ~ ~ ~ {Tags:[respawn_beacon],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b}

execute unless entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] run tellraw @s {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"召喚失敗！","color":"dark_red"},{"text":" | 請確保","color":"gray"},{"text":"透天環境","color":"aqua"},{"text":"且","color":"gray"},{"text":"召喚點是淨空的","color":"aqua"},{"text":"！","color":"gray"}]}
execute unless entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] run tellraw @s {"text":"","extra":[{"text":"注意！","color":"aqua"},{"text":"召喚失敗會返回物品，但可能有顯示問題，請檢查背包","color":"gray"}]}
execute unless entity @s[predicate=cursefight:player/can_see_sky,gamemode=survival] at @s run loot spawn ~ ~ ~ loot cursefight:tools/mobile_respawn

advancement revoke @s only cursefight:game/mobile_respawn