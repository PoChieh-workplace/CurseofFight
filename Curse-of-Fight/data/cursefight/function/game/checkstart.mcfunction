execute if entity @a[team=] run tellraw @a {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"遊戲無法開始","color":"gold"},{"text":" | ","color":"white"},{"text":"有人尚未分隊","color":"green"}]}
execute if entity @a[team=] run schedule function cursefight:game/resetplayer 3s
execute unless entity @a[team=] run function cursefight:game/start