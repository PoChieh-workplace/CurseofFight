execute as @a[tag=cursefight.alive] run scoreboard players operation @s self_respawn = @s team_respawn

execute if entity @a[team=white,tag=cursefight.alive] as @a[team=white,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=red,tag=cursefight.alive] as @a[team=red,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=blue,tag=cursefight.alive] as @a[team=blue,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=yellow,tag=cursefight.alive] as @a[team=yellow,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=green,tag=cursefight.alive] as @a[team=green,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=aqua,tag=cursefight.alive] as @a[team=aqua,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=gray,tag=cursefight.alive] as @a[team=gray,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=gold,tag=cursefight.alive] as @a[team=gold,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_red,tag=cursefight.alive] as @a[team=dark_red,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_blue,tag=cursefight.alive] as @a[team=dark_blue,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_purple,tag=cursefight.alive] as @a[team=dark_purple,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_aqua,tag=cursefight.alive] as @a[team=dark_aqua,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_green,tag=cursefight.alive] as @a[team=dark_green,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_gray,tag=cursefight.alive] as @a[team=dark_gray,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=light_purple,tag=cursefight.alive] as @a[team=light_purple,scores={death=1..}] run scoreboard players remove @s self_respawn 1

execute as @a[scores={self_respawn=..0}] run function cursefight:game/mode/recovery/time_respawn