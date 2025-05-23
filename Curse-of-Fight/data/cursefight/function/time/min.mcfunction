##
 # file:    min.mcfunction
 # purpose: Main minutes function.
 # route:   cursefight:time/min
 #
 # Created by Waterball.
##

scoreboard players set _timer_sec_ info 0
scoreboard players add _timer_min_ info 1

# wb survival time
execute as @a[team=!black,tag=cursefight.alive] run scoreboard players add @s survival_time 1

execute if score _mode_ info matches 0 run function cursefight:game/mode/classic/check_event
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/check_event

# game tips per 3 mins
scoreboard players operation _timer_tips_ info = _timer_min_ info
scoreboard players operation _timer_tips_ info %= const3 X
execute if score _timer_tips_ info matches 0 run function cursefight:game/tips/main