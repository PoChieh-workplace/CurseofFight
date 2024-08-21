tellraw @a {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"score":{"name":"_timer_min_","objective":"info"},"color":"gray"},{"text":"分鐘","color":"gray"},{"text":" | ","color":"white"},{"text":"邊界壓縮","color":"gold"},{"text":"啟動","color":"green"}]}
scoreboard players set _worldborder_ activity_set 1
execute as @a at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @s ~ ~ ~
execute if score _worldborder_min_range_ info matches 0 run function cursefight:game/worldborder/narrow_in_centers/min_range0
execute if score _worldborder_min_range_ info matches 16 run function cursefight:game/worldborder/narrow_in_centers/min_range16
execute if score _worldborder_min_range_ info matches 32 run function cursefight:game/worldborder/narrow_in_centers/min_range32
execute if score _worldborder_min_range_ info matches 48 run function cursefight:game/worldborder/narrow_in_centers/min_range48
execute if score _worldborder_min_range_ info matches 64 run function cursefight:game/worldborder/narrow_in_centers/min_range64