function cursefight:game/spreadplayers/spreadplayer_team

gamerule keepInventory true

scoreboard objectives add team_respawn dummy "\u00A7a【隊伍重生秒數】"
scoreboard objectives add self_respawn dummy "\u00A7a【剩餘重生秒數】"
scoreboard players set @a team_respawn 10
scoreboard players set @a self_respawn 10

# T0削弱 T3增強
execute as @a[tag=T0] run attribute @s minecraft:movement_speed base set 0.085
execute as @a[tag=T3] run give @s minecraft:iron_sword[minecraft:enchantments={"cursefight:generic/sword/hostile_nemesis":1}]
execute as @a[tag=T3] run give @s minecraft:iron_pickaxe[minecraft:enchantments={"cursefight:career/miner/auto_smelt":1}]
execute as @a[tag=T3] run attribute @s minecraft:max_health base set 30

title @a subtitle "\u00A78\u00A7l擊敗所有敵隊玩家"
title @a title "\u00A76\u00A7l你受到 \u00A7a\u00A7l悅靈的 \u00A76\u00A7l祝福中"
title @a times 1s 3s 1s