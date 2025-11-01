# 基本訊息顯示
execute as @a[tag=!1_splatus_actionbar_disabled] run title @s actionbar {"text":"","color":"#CA8EFF","bold":true,"extra":[{"text":"與邊界距離：","color":"blue"},{"text":"("},{"score":{"name":"@s","objective":"posX"}},{"text":","},{"score":{"name":"@s","objective":"posZ"}},{"text":")  "},{"text":"中心座標：","color":"gold"},{"text":"("},{"score":{"name":"_center_","objective":"posX"}},{"text":","},{"score":{"name":"_center_","objective":"posZ"}},{"text":")  "},{"text":"重生秒數：","color":"dark_green"},{"score":{"name":"@s","objective":"self_respawn"}},{"text":" 體溫：","color":"dark_green"},{"score":{"name":"@s","objective":"cursefight.temperature"}},{"text":"℃"}]}

# 傷害公告
execute as @a[scores={damage_warn=1..},gamemode=survival] run function cursefight:game/damage/damage_warn

# 使用配方
execute as @a[scores={knowledge=1..}] run function cursefight:game/generic/use_knowledge

# 使用重生台
execute as @a[predicate=cursefight:player/if_use_respawn,gamemode=survival] run function cursefight:game/respawn/using_respawn

# 不使用重生台
execute as @a[predicate=!cursefight:player/if_use_respawn,gamemode=survival,scores={respawning=1..}] run scoreboard players set @s respawning 0

# 死亡觸發
execute as @a[scores={death=1..},gamemode=survival] at @s run function cursefight:game/generic/player/getkill

# 獲勝觸發
execute if score 剩餘隊伍 show_info matches ..1 unless entity @a[tag=win] run function cursefight:game/mode/recovery/win