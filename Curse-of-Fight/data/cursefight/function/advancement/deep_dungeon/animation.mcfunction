
execute if entity @s[scores={animation.timer=0..121}] run title @s times 0t 2s 3s

execute if entity @s[scores={animation.timer=110..120}] run title @s title [{"text":"Deep Dungeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=100..110}] run title @s title [{"text":"D","obfuscated":false,"color":"dark_red","bold":true},{"text":"eep Dungeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=90..100}] run title @s title [{"text":"De","obfuscated":false,"color":"dark_red","bold":true},{"text":"ep Dungeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=80..90}] run title @s title [{"text":"Dee","obfuscated":false,"color":"dark_red","bold":true},{"text":"p Dungeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=70..80}] run title @s title [{"text":"Deep","obfuscated":false,"color":"dark_red","bold":true},{"text":" Dungeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=60..70}] run title @s title [{"text":"Deep D","obfuscated":false,"color":"dark_red","bold":true},{"text":"ungeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=50..60}] run title @s title [{"text":"Deep Du","obfuscated":false,"color":"dark_red","bold":true},{"text":"ngeon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=40..50}] run title @s title [{"text":"Deep Dun","obfuscated":false,"color":"dark_red","bold":true},{"text":"geon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=30..40}] run title @s title [{"text":"Deep Dung","obfuscated":false,"color":"dark_red","bold":true},{"text":"eon","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=20..30}] run title @s title [{"text":"Deep Dunge","obfuscated":false,"color":"dark_red","bold":true},{"text":"on","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=10..20}] run title @s title [{"text":"Deep Dungeo","obfuscated":false,"color":"dark_red","bold":true},{"text":"n","obfuscated":true,"color":"black","bold":true}]
execute if entity @s[scores={animation.timer=0..10}] run title @s title [{"text":"Deep Dungeon","obfuscated":false,"color":"dark_red","bold":true}]

scoreboard players operation @s animation.timer.a = @s animation.timer
scoreboard players operation @s animation.timer.a %= const10 X
execute if score @s animation.timer.a matches 0 if entity @s[scores={animation.timer=0..120}] run playsound minecraft:block.sculk.step master @s ~ ~ ~ 10 0.5 1
execute if score @s animation.timer.a matches 0 if entity @s[scores={animation.timer=0..120}] run playsound minecraft:block.copper.place master @s ~ ~ ~ 10 1.8 1

execute if entity @s[scores={animation.timer=0..10}] run title @s subtitle {"translate":"cursefight.advancement.animation.discovered","color":"yellow"}
execute if score @s animation.timer matches 15 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.7 0.1 1

scoreboard players remove @s animation.timer 1