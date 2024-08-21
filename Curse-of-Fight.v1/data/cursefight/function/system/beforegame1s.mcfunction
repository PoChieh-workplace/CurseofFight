execute at @e[tag=starteffect1] run playsound minecraft:entity.warden.heartbeat player @a[distance=..5]

execute if score _game_start_ info matches 0 run schedule function cursefight:system/beforegame1s 1s