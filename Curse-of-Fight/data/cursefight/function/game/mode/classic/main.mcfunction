function cursefight:game/spreadplayers/main
scoreboard player set @a[team=!black] cursefight.temperature.float 37000

gamerule keepInventory false

# T0削弱 T3增強
execute as @a[tag=T0] run attribute @s minecraft:movement_speed base set 0.085
execute as @a[tag=T3] run give @s minecraft:iron_sword[minecraft:enchantments={"cursefight:generic/sword/hostile_nemesis":1}]
execute as @a[tag=T3] run give @s minecraft:iron_pickaxe[minecraft:enchantments={"cursefight:career/miner/auto_smelt":1}]
execute as @a[tag=T3] run attribute @s minecraft:max_health base set 30

title @a subtitle "\u00A78\u00A7l擊敗所有敵隊玩家"
title @a title "\u00A76\u00A7l你受到 \u00A77\u00A7l詛咒的 \u00A76\u00A7l饞食中"
title @a times 1s 3s 1s