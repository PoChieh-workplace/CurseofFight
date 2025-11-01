# Init scoreboards
scoreboard objectives add tr.first dummy

# Do the toast
execute unless score %USED tr.first matches 2.. run schedule function terralith:toast 20t
scoreboard players set %USED tr.first 2