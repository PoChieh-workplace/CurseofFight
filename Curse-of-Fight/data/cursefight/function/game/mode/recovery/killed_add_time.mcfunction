scoreboard players operation _tmp_ info = _timer_min_ info
scoreboard players operation _tmp_ info *= const2 X

execute if entity @s[team=white] run scoreboard players operation @a[team=red] team_respawn += _tmp_ info
execute if entity @s[team=red] run scoreboard players operation @a[team=red] team_respawn += _tmp_ info
execute if entity @s[team=blue] run scoreboard players operation @a[team=blue] team_respawn += _tmp_ info
execute if entity @s[team=yellow] run scoreboard players operation @a[team=yellow] team_respawn += _tmp_ info
execute if entity @s[team=green] run scoreboard players operation @a[team=green] team_respawn += _tmp_ info
execute if entity @s[team=aqua] run scoreboard players operation @a[team=aqua] team_respawn += _tmp_ info
execute if entity @s[team=gray] run scoreboard players operation @a[team=gray] team_respawn += _tmp_ info
execute if entity @s[team=gold] run scoreboard players operation @a[team=gold] team_respawn += _tmp_ info
execute if entity @s[team=dark_red] run scoreboard players operation @a[team=dark_red] team_respawn += _tmp_ info
execute if entity @s[team=dark_blue] run scoreboard players operation @a[team=dark_blue] team_respawn += _tmp_ info
execute if entity @s[team=dark_purple] run scoreboard players operation @a[team=dark_purple] team_respawn += _tmp_ info
execute if entity @s[team=dark_aqua] run scoreboard players operation @a[team=dark_aqua] team_respawn += _tmp_ info
execute if entity @s[team=dark_green] run scoreboard players operation @a[team=dark_green] team_respawn += _tmp_ info
execute if entity @s[team=dark_gray] run scoreboard players operation @a[team=dark_gray] team_respawn += _tmp_ info
execute if entity @s[team=light_purple] run scoreboard players operation @a[team=light_purple] team_respawn += _tmp_ info

execute if entity @s[team=white] run tellraw @a[team=white] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=red] run tellraw @a[team=red] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=blue] run tellraw @a[team=blue] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=yellow] run tellraw @a[team=yellow] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=green] run tellraw @a[team=green] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=aqua] run tellraw @a[team=aqua] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=gray] run tellraw @a[team=gray] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=gold] run tellraw @a[team=gold] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=dark_red] run tellraw @a[team=dark_red] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=dark_blue] run tellraw @a[team=dark_blue] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=dark_purple] run tellraw @a[team=dark_purple] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=dark_aqua] run tellraw @a[team=dark_aqua] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=dark_green] run tellraw @a[team=dark_green] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=dark_gray] run tellraw @a[team=dark_gray] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
execute if entity @s[team=light_purple] run tellraw @a[team=light_purple] {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"隊友死亡，重生時間 ","color":"gold"},{"text":"+","color":"red"},{"score":{"name":"_tmp_","objective":"info"},"color":"red"},{"text":" 秒","color":"gold"}]}
