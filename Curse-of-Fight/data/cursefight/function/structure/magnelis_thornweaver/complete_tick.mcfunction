execute if score @s cursefight.object.tick matches 1 run title @a[tag=magnelis_thornweaver_player_complete_anim] times 8t 10t 8t
execute if score @s cursefight.object.tick matches 1 run title @a[tag=magnelis_thornweaver_player_complete_anim] title {"text":"\uE01F","font":"minecraft:fade"}
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,0,255,0]} ~ ~8 ~ 4 1 4 1 3
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,100,200,100]} ~ ~8 ~ 4 1 4 1 3
execute if score @s cursefight.object.tick matches 1..100 run particle minecraft:tinted_leaves{color:[255,100,122,0]} ~ ~8 ~ 4 1 4 1 3
