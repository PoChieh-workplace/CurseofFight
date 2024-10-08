$tellraw @p [{"translate":"\nPlayer Stats of ","color":"gray"},{"text":"$(player)"},{"translate": "","color": "#6e6e6e"},{"text":"\n"}]

# member join number
$execute if score $allmembers refresh_members matches 2.. run tellraw @p [{"translate":"  Member ","color":"gray"},{"translate":"#","color": "yellow"},"",{"score":{"name":"$(player)","objective":"refresh_members"},"color": "yellow"},{"translate": " "},{"translate":"(ID: "},{"score":{"name":"$(player)","objective":"refresh_memberID"},"color": "gray"},{"translate": ")      "}]


# TIME

$execute if score $(player) refresh_player_hours matches 10.. if score $(player) refresh_player_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": ""},{"score":{"name":"$(player)","objective":"refresh_player_hours"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_hours matches 10.. if score $(player) refresh_player_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": ""},{"score":{"name":"$(player)","objective":"refresh_player_hours"}},{"translate": ":0"},{"score":{"name":"$(player)","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_hours matches ..9 if score $(player) refresh_player_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": "0"},{"score":{"name":"$(player)","objective":"refresh_player_hours"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_hours matches ..9 if score $(player) refresh_player_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": "0"},{"score":{"name":"$(player)","objective":"refresh_player_hours"}},{"translate": ":0"},{"score":{"name":"$(player)","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

#############################################################################


$tellraw @p [{"translate":"  Mob Kills: ","color":"gray"},"",{"score":{"name":"$(player)","objective":"refresh_player_mobkills"},"color": "yellow"},{"translate": ""},{"translate":""}]
$tellraw @p [{"translate":"  Player Kills: ","color":"gray"},"",{"score":{"name":"$(player)","objective":"refresh_player_kills"},"color": "yellow"},{"translate": ""},{"translate":""}]
$tellraw @p [{"translate":"  XP Level: ","color":"gray"},"",{"score":{"name":"$(player)","objective":"refresh_player_level"},"color": "yellow"},{"translate": ""}]
$tellraw @p [{"translate":"  Deaths: ","color":"gray"},"",{"score":{"name":"$(player)","objective":"refresh_player_deaths"},"color": "yellow"},{"translate": ""}]


# LAST DEATH

$execute if score $(player) refresh_player_deaths matches 1.. if score $(player) refresh_player_d_hours matches 10.. if score $(player) refresh_player_d_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": ""},{"score":{"name":"$(player)","objective":"refresh_player_d_hours"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_deaths matches 1.. if score $(player) refresh_player_d_hours matches 10.. if score $(player) refresh_player_d_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": ""},{"score":{"name":"$(player)","objective":"refresh_player_d_hours"}},{"translate": ":0"},{"score":{"name":"$(player)","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_deaths matches 1.. if score $(player) refresh_player_d_hours matches ..9 if score $(player) refresh_player_d_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": "0"},{"score":{"name":"$(player)","objective":"refresh_player_d_hours"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_deaths matches 1.. if score $(player) refresh_player_d_hours matches ..9 if score $(player) refresh_player_d_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": "0"},{"score":{"name":"$(player)","objective":"refresh_player_d_hours"}},{"translate": ":0"},{"score":{"name":"$(player)","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"$(player)","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

$execute if score $(player) refresh_player_deaths matches 0 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": "--"}]

# AVERAGE DEATHS PER HOUR
$execute if score $(player) refresh_player_deathaverage_decimal matches 0..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Average Deaths Per Hour: ","color":"gray"},{"score":{"name":"$(player)","objective":"refresh_player_deathaverage"}},{"translate": ".00"},{"score":{"name":"$(player)","objective":"refresh_player_deathaverage_decimal"}}]
$execute if score $(player) refresh_player_deathaverage_decimal matches 10..99 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Average Deaths Per Hour: ","color":"gray"},{"score":{"name":"$(player)","objective":"refresh_player_deathaverage"}},{"translate": ".0"},{"score":{"name":"$(player)","objective":"refresh_player_deathaverage_decimal"}}]
$execute if score $(player) refresh_player_deathaverage_decimal matches 100.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Average Deaths Per Hour: ","color":"gray"},{"score":{"name":"$(player)","objective":"refresh_player_deathaverage"}},{"translate": "."},{"score":{"name":"$(player)","objective":"refresh_player_deathaverage_decimal"}}]




tellraw @p [{"text": " "}]


playsound entity.experience_orb.pickup player @p ~ ~ ~ 1 1

tag @s add refresh_temp_player_exists



#tellraw @p [{"translate":"","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"score":{"name":"$(player)","objective":"refresh_player_hours"}},{"translate": " hours, "},{"score":{"name":"$(player)","objective":"refresh_player_minutes"}},{"translate": " minutes, "},{"score":{"name":"$(player)","objective":"refresh_player_seconds"}},{"translate": " seconds"},{"translate":""}]
