execute positioned over world_surface run spawnpoint @s ~ ~ ~
gamemode spectator @s
execute as @a at @s run playsound cursefight.playerkilled player @s ~ ~ ~

execute if entity @s[team=white] unless entity @a[team=white,scores={death=0}] run kill @e[tag=alive,tag=white]
execute if entity @s[team=red] unless entity @a[team=red,scores={death=0}] run kill @e[tag=alive,tag=red]
execute if entity @s[team=blue] unless entity @a[team=blue,scores={death=0}] run kill @e[tag=alive,tag=blue]
execute if entity @s[team=yellow] unless entity @a[team=yellow,scores={death=0}] run kill @e[tag=alive,tag=yellow]
execute if entity @s[team=green] unless entity @a[team=green,scores={death=0}] run kill @e[tag=alive,tag=green]
execute if entity @s[team=aqua] unless entity @a[team=aqua,scores={death=0}] run kill @e[tag=alive,tag=aqua]
execute if entity @s[team=gray] unless entity @a[team=gray,scores={death=0}] run kill @e[tag=alive,tag=gray]
execute if entity @s[team=gold] unless entity @a[team=gold,scores={death=0}] run kill @e[tag=alive,tag=gold]
execute if entity @s[team=dark_red] unless entity @a[team=dark_red,scores={death=0}] run kill @e[tag=alive,tag=dark_red]
execute if entity @s[team=dark_blue] unless entity @a[team=dark_blue,scores={death=0}] run kill @e[tag=alive,tag=dark_blue]
execute if entity @s[team=dark_purple] unless entity @a[team=dark_purple,scores={death=0}] run kill @e[tag=alive,tag=dark_purple]
execute if entity @s[team=dark_aqua] unless entity @a[team=dark_aqua,scores={death=0}] run kill @e[tag=alive,tag=dark_aqua]
execute if entity @s[team=dark_green] unless entity @a[team=dark_green,scores={death=0}] run kill @e[tag=alive,tag=dark_green]
execute if entity @s[team=dark_gray] unless entity @a[team=dark_gray,scores={death=0}] run kill @e[tag=alive,tag=dark_gray]
execute if entity @s[team=light_purple] unless entity @a[team=light_purple,scores={death=0}] run kill @e[tag=alive,tag=light_purple]


# mode 1 add time
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/killed_add_time
