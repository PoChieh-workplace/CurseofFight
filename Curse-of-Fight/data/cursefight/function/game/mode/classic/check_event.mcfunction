execute if score _timer_min_ info >= _worldborder_ info if score _worldborder_ activity_set matches 0 run function cursefight:game/worldborder/narrow_in_center
execute if score _timer_min_ info >= _border_reminder_ info if score _border_reminder_ activity_set matches 0 run function cursefight:game/worldborder/reminder
execute if score _timer_min_ info >= _glowing_ info if score _glowing_ activity_set matches 0 run function cursefight:game/glowing/main
execute if score _timer_min_ info >= _worldborder_end_ info if score _worldborder_end_ activity_set matches 0 run function cursefight:game/worldborder/end
execute if score _timer_min_ info >= _ominous_ info if score _ominous_ activity_set matches 0 run function cursefight:game/ominous/announce
execute if score _timer_min_ info >= _forgiven_ info if score _forgiven_ activity_set matches 0 run function cursefight:game/forgiven/main

execute store result score _activity_temp_ info run scoreboard players get _timer_min_ info
scoreboard players operation _activity_temp_ info %= const20 X

# const30
execute if score _activity_temp_ info matches 0 run function cursefight:activity/main
