execute positioned over world_surface run spawnpoint @s ~ ~ ~
gamemode spectator @s
execute as @a at @s run playsound cursefight.playerkilled player @s ~ ~ ~

execute if entity @s[team=white] unless entity @a[team=white,tag=cursefight.alive] run kill @e[tag=alive,tag=white]
execute if entity @s[team=red] unless entity @a[team=red,tag=cursefight.alive] run kill @e[tag=alive,tag=red]
execute if entity @s[team=blue] unless entity @a[team=blue,tag=cursefight.alive] run kill @e[tag=alive,tag=blue]
execute if entity @s[team=yellow] unless entity @a[team=yellow,tag=cursefight.alive] run kill @e[tag=alive,tag=yellow]
execute if entity @s[team=green] unless entity @a[team=green,tag=cursefight.alive] run kill @e[tag=alive,tag=green]
execute if entity @s[team=aqua] unless entity @a[team=aqua,tag=cursefight.alive] run kill @e[tag=alive,tag=aqua]
execute if entity @s[team=gray] unless entity @a[team=gray,tag=cursefight.alive] run kill @e[tag=alive,tag=gray]
execute if entity @s[team=gold] unless entity @a[team=gold,tag=cursefight.alive] run kill @e[tag=alive,tag=gold]
execute if entity @s[team=dark_red] unless entity @a[team=dark_red,tag=cursefight.alive] run kill @e[tag=alive,tag=dark_red]
execute if entity @s[team=dark_blue] unless entity @a[team=dark_blue,tag=cursefight.alive] run kill @e[tag=alive,tag=dark_blue]
execute if entity @s[team=dark_purple] unless entity @a[team=dark_purple,tag=cursefight.alive] run kill @e[tag=alive,tag=dark_purple]
execute if entity @s[team=dark_aqua] unless entity @a[team=dark_aqua,tag=cursefight.alive] run kill @e[tag=alive,tag=dark_aqua]
execute if entity @s[team=dark_green] unless entity @a[team=dark_green,tag=cursefight.alive] run kill @e[tag=alive,tag=dark_green]
execute if entity @s[team=dark_gray] unless entity @a[team=dark_gray,tag=cursefight.alive] run kill @e[tag=alive,tag=dark_gray]
execute if entity @s[team=light_purple] unless entity @a[team=light_purple,tag=cursefight.alive] run kill @e[tag=alive,tag=light_purple]


# mode 1 add time
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/killed_add_time
