tellraw @p [{"translate":"\nPlayer Stats of ","color":"gray"},{"selector":"@s","color": "green"},{"translate": "","color": "#6e6e6e"},{"text":"\n"}]

# member join number
execute as @s[tag=refresh_player_sharingoff] if score $allmembers refresh_members matches 2.. if score tabdisplay refresh_settings matches 8 run tellraw @p [{"translate":"  Member ","color":"gray"},{"translate":"#","color": "yellow"},"",{"score":{"name":"@s","objective":"refresh_members"},"color": "yellow"},{"translate": " "},{"translate":"(ID: "},{"score":{"name":"@s","objective":"refresh_memberID"},"color": "gray"},{"translate": ")      "},{"text": "ⓘ Sharing: ","hoverEvent":{"action": "show_text","contents":[{"text": "Your member ID can be used by others to view your stats. To view someone else's stats, use "},{"translate":"\"/trigger stats set playerID\"","color": "yellow"},{"translate":", replacing "},{"text": "playerID","color": "yellow"},{"text": " with the member ID of an online player."},{"translate":"\n(Hold ","color": "gray"},{"keybind":"key.playerlist","color": "gray"},{"translate":" to view online players' member IDs)","color": "gray"},{"translate":"\n\nYou can make your stats private from non-operator players by disabling this setting."}]}},{"text": "Disabled","color": "red","underlined": true,"hoverEvent": {"action": "show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent": {"action": "run_command","value": "/trigger stats set -902"}}]
execute as @s[tag=!refresh_player_sharingoff] if score $allmembers refresh_members matches 2.. if score tabdisplay refresh_settings matches 8 run tellraw @p [{"translate":"  Member ","color":"gray"},{"translate":"#","color": "yellow"},"",{"score":{"name":"@s","objective":"refresh_members"},"color": "yellow"},{"translate": " "},{"translate":"(ID: "},{"score":{"name":"@s","objective":"refresh_memberID"},"color": "gray"},{"translate": ")      "},{"text": "ⓘ Sharing: ","hoverEvent":{"action": "show_text","contents":[{"text": "Your member ID can be used by others to view your stats. To view someone else's stats, use "},{"translate":"\"/trigger stats set playerID\"","color": "yellow"},{"translate":", replacing "},{"text": "playerID","color": "yellow"},{"text": " with the member ID of an online player."},{"translate":"\n(Hold ","color": "gray"},{"keybind":"key.playerlist","color": "gray"},{"translate":" to view online players' member IDs)","color": "gray"},{"translate":"\n\nYou can make your stats private from non-operator players by disabling this setting."}]}},{"text": "Enabled","color": "green","underlined": true,"hoverEvent": {"action": "show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent": {"action": "run_command","value": "/trigger stats set -901"}}]

execute as @s[tag=refresh_player_sharingoff] if score $allmembers refresh_members matches 2.. unless score tabdisplay refresh_settings matches 8 run tellraw @p [{"translate":"  Member ","color":"gray"},{"translate":"#","color": "yellow"},"",{"score":{"name":"@s","objective":"refresh_members"},"color": "yellow"},{"translate": " "},{"translate":"(ID: "},{"score":{"name":"@s","objective":"refresh_memberID"},"color": "gray"},{"translate": ")      "},{"text": "ⓘ Sharing: ","hoverEvent":{"action": "show_text","contents":[{"text": "Your member ID can be used by others to view your stats. To view someone else's stats, use "},{"translate":"\"/trigger stats set playerID\"","color": "yellow"},{"translate":", replacing "},{"text": "playerID","color": "yellow"},{"text": " with the member ID of an online player.\n\nYou can make your stats private from non-operator players by disabling this setting."}]}},{"text": "Disabled","color": "red","underlined": true,"hoverEvent": {"action": "show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent": {"action": "run_command","value": "/trigger stats set -902"}}]
execute as @s[tag=!refresh_player_sharingoff] if score $allmembers refresh_members matches 2.. unless score tabdisplay refresh_settings matches 8 run tellraw @p [{"translate":"  Member ","color":"gray"},{"translate":"#","color": "yellow"},"",{"score":{"name":"@s","objective":"refresh_members"},"color": "yellow"},{"translate": " "},{"translate":"(ID: "},{"score":{"name":"@s","objective":"refresh_memberID"},"color": "gray"},{"translate": ")      "},{"text": "ⓘ Sharing: ","hoverEvent":{"action": "show_text","contents":[{"text": "Your member ID can be used by others to view your stats. To view someone else's stats, use "},{"translate":"\"/trigger stats set playerID\"","color": "yellow"},{"translate":", replacing "},{"text": "playerID","color": "yellow"},{"text": " with the member ID of an online player.\n\nYou can make your stats private from non-operator players by disabling this setting."}]}},{"text": "Enabled","color": "green","underlined": true,"hoverEvent": {"action": "show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent": {"action": "run_command","value": "/trigger stats set -901"}}]


# TIME

execute if score @s refresh_player_hours matches 10.. if score @s refresh_player_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": ""},{"score":{"name":"@s","objective":"refresh_player_hours"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_hours matches 10.. if score @s refresh_player_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": ""},{"score":{"name":"@s","objective":"refresh_player_hours"}},{"translate": ":0"},{"score":{"name":"@s","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_hours matches ..9 if score @s refresh_player_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": "0"},{"score":{"name":"@s","objective":"refresh_player_hours"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_hours matches ..9 if score @s refresh_player_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"translate": "0"},{"score":{"name":"@s","objective":"refresh_player_hours"}},{"translate": ":0"},{"score":{"name":"@s","objective":"refresh_player_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_seconds"}},{"translate": ""},{"translate":""}]

#############################################################################


tellraw @p [{"translate":"  Mob Kills: ","color":"gray"},"",{"score":{"name":"@s","objective":"refresh_player_mobkills"},"color": "yellow"},{"translate": ""},{"translate":""}]
tellraw @p [{"translate":"  Player Kills: ","color":"gray"},"",{"score":{"name":"@s","objective":"refresh_player_kills"},"color": "yellow"},{"translate": ""},{"translate":""}]
tellraw @p [{"translate":"  XP Level: ","color":"gray"},"",{"score":{"name":"@s","objective":"refresh_player_level"},"color": "yellow"},{"translate": ""}]
tellraw @p [{"translate":"  Deaths: ","color":"gray"},"",{"score":{"name":"@s","objective":"refresh_player_deaths"},"color": "yellow"},{"translate": ""}]


# LAST DEATH

execute if score @s refresh_player_deaths matches 1.. if score @s refresh_player_d_hours matches 10.. if score @s refresh_player_d_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": ""},{"score":{"name":"@s","objective":"refresh_player_d_hours"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_deaths matches 1.. if score @s refresh_player_d_hours matches 10.. if score @s refresh_player_d_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": ""},{"score":{"name":"@s","objective":"refresh_player_d_hours"}},{"translate": ":0"},{"score":{"name":"@s","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_deaths matches 1.. if score @s refresh_player_d_hours matches ..9 if score @s refresh_player_d_minutes matches 10.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": "0"},{"score":{"name":"@s","objective":"refresh_player_d_hours"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_deaths matches 1.. if score @s refresh_player_d_hours matches ..9 if score @s refresh_player_d_minutes matches ..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": "0"},{"score":{"name":"@s","objective":"refresh_player_d_hours"}},{"translate": ":0"},{"score":{"name":"@s","objective":"refresh_player_d_minutes"}},{"translate": ":"},{"score":{"name":"@s","objective":"refresh_player_d_seconds"}},{"translate": ""},{"translate":""}]

execute if score @s refresh_player_deaths matches 0 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Time Since Last Death: ","color":"gray"},{"translate": "--"}]

# AVERAGE DEATHS PER HOUR
execute if score @s refresh_player_deathaverage_decimal matches 0..9 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Average Deaths Per Hour: ","color":"gray"},{"score":{"name":"@s","objective":"refresh_player_deathaverage"}},{"translate": ".00"},{"score":{"name":"@s","objective":"refresh_player_deathaverage_decimal"}}]
execute if score @s refresh_player_deathaverage_decimal matches 10..99 run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Average Deaths Per Hour: ","color":"gray"},{"score":{"name":"@s","objective":"refresh_player_deathaverage"}},{"translate": ".0"},{"score":{"name":"@s","objective":"refresh_player_deathaverage_decimal"}}]
execute if score @s refresh_player_deathaverage_decimal matches 100.. run tellraw @p [{"text":"  ","color": "yellow"},{"translate":"Average Deaths Per Hour: ","color":"gray"},{"score":{"name":"@s","objective":"refresh_player_deathaverage"}},{"translate": "."},{"score":{"name":"@s","objective":"refresh_player_deathaverage_decimal"}}]




tellraw @p [{"text": " "}]


playsound entity.experience_orb.pickup player @p ~ ~ ~ 1 1





#tellraw @p [{"translate":"","color": "yellow"},{"translate":"Time Played: ","color":"gray"},{"score":{"name":"@s","objective":"refresh_player_hours"}},{"translate": " hours, "},{"score":{"name":"@s","objective":"refresh_player_minutes"}},{"translate": " minutes, "},{"score":{"name":"@s","objective":"refresh_player_seconds"}},{"translate": " seconds"},{"translate":""}]
