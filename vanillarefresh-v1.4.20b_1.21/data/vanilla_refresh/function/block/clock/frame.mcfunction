title @s times 0t 1s 1s
title @s title ""
execute if score clock refresh_settings matches 1 if score daytime_min refresh_daycounter matches 0..9 run title @s subtitle [{"translate": "","color": "yellow"},{"translate":"Clock","color": "gold"},{"translate": " - ","color": "gray"},{"translate": "Day: "},{"score":{"name": "day","objective": "refresh_daycounter"}},{"translate": " - ","color": "gray"},{"translate": "Time: "},{"score":{"name": "daytime_hour","objective": "refresh_daycounter"}},{"translate": ":0"},{"score":{"name": "daytime_min","objective": "refresh_daycounter"}}]
execute if score clock refresh_settings matches 1 if score daytime_min refresh_daycounter matches 10..60 run title @s subtitle [{"translate": "","color": "yellow"},{"translate":"Clock","color": "gold"},{"translate": " - ","color": "gray"},{"translate": "Day: "},{"score":{"name": "day","objective": "refresh_daycounter"}},{"translate": " - ","color": "gray"},{"translate": "Time: "},{"score":{"name": "daytime_hour","objective": "refresh_daycounter"}},{"translate": ":"},{"score":{"name": "daytime_min","objective": "refresh_daycounter"}}]

execute if score clock refresh_settings matches 2 run title @s subtitle [{"translate": "","color": "yellow"},{"translate":"Clock","color": "gold"},{"translate": " - ","color": "gray"},{"translate": "Day: "},{"score":{"name": "day","objective": "refresh_daycounter"}},{"translate": " - ","color": "gray"},{"translate": "Time: "},{"score":{"name": "daytime","objective": "refresh_daycounter"}}]