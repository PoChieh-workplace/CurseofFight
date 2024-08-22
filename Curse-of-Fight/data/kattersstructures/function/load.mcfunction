##init schedules
function kattersstructures:schedules/on_load

##add scoreboards
scoreboard objectives add kattersstructures.technical dummy

scoreboard objectives add kattersstructures.raj_lightning dummy
schedule function kattersstructures:scheduled_2s 2s