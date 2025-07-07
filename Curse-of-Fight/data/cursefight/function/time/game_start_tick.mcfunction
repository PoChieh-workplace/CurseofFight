effect give @a[gamemode=spectator] minecraft:night_vision 20 0

execute store result score 剩餘隊伍 show_info run execute if entity @e[tag=alive]

# team mob glowing
effect give @e[team=!,type=!minecraft:player,type=!minecraft:wolf] minecraft:glowing infinite 0

# spectate
execute as @a[team=!black,scores={death=1..},gamemode=spectator] run function cursefight:game/spectate/team_only

# mode
execute if score _mode_ info matches 0 run function cursefight:game/mode/classic/tick
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/tick

execute if score _if_career_ info matches 1 run function cursefight:career/system/tick