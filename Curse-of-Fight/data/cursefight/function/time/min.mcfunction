scoreboard players set _timer_sec_ info 0
scoreboard players add _timer_min_ info 1
execute store result score -現在時間- show_info run scoreboard players get _timer_min_ info

# wb survival time
execute as @a[team=!black,scores={death=0}] run scoreboard players add @s survival_time 1


execute if score _mode_ info matches 0 run function cursefight:game/mode/classic/check_event
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/check_event