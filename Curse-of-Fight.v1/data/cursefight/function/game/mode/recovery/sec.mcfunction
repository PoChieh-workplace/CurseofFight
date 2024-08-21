execute as @a[scores={death=0}] run scoreboard players operation @s self_respawn = @s team_respawn

execute if entity @a[team=white,scores={death=0}] as @a[team=white,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=red,scores={death=0}] as @a[team=red,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=blue,scores={death=0}] as @a[team=blue,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=yellow,scores={death=0}] as @a[team=yellow,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=green,scores={death=0}] as @a[team=green,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=aqua,scores={death=0}] as @a[team=aqua,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=gray,scores={death=0}] as @a[team=gray,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=gold,scores={death=0}] as @a[team=gold,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_red,scores={death=0}] as @a[team=dark_red,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_blue,scores={death=0}] as @a[team=dark_blue,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_purple,scores={death=0}] as @a[team=dark_purple,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_aqua,scores={death=0}] as @a[team=dark_aqua,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_green,scores={death=0}] as @a[team=dark_green,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=dark_gray,scores={death=0}] as @a[team=dark_gray,scores={death=1..}] run scoreboard players remove @s self_respawn 1
execute if entity @a[team=light_purple,scores={death=0}] as @a[team=light_purple,scores={death=1..}] run scoreboard players remove @s self_respawn 1

execute as @a[scores={self_respawn=..0}] run function cursefight:game/respawn/respawn_himself