scoreboard players add _timer_sec_ info 1
execute if score _game_start_ info matches 1 if score _timer_sec_ info matches 60.. run function cursefight:time/min


# check activity set
execute if score _game_start_ info matches 1 run function cursefight:activity/sec_check

# game start set
execute if score _game_start_ info matches 1 run function cursefight:time/game_start_sec