effect give @a[team=!black,gamemode=survival] minecraft:darkness 20 2
execute as @a at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @s ~ ~ ~
execute at @n[tag=border_center] run playsound minecraft:music_disc.creator music @a ~ 100 ~ 10000 1 1
tellraw @a {"text":"","extra":[{"text":"Curse of Fight - 背後主使者 >>> ","color":"dark_red"},{"score":{"name":"_timer_min_","objective":"info"},"color":"gray"},{"text":"分鐘","color":"gray"},{"text":" | ","color":"white"},{"text":"詛咒蠹蝕","color":"gold"},{"text":"開始","color":"green"}]}
scoreboard players set _ominous_ activity_set 1
worldborder set 3 300
function cursefight:game/ominous/say