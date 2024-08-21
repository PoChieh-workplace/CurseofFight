tellraw @a {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"score":{"name":"_timer_min_","objective":"info"},"color":"gray"},{"text":"分鐘","color":"gray"},{"text":" | ","color":"white"},{"text":"邊界壓縮提醒，剩下：","color":"gold"},{"text":"10分鐘","color":"green"}]}
playsound minecraft:entity.experience_orb.pickup player @a
scoreboard players set _border_reminder_ activity_set 1