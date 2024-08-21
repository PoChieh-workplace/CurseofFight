
execute if entity @s[scores={animation.timer=0..121}] run title @s times 0t 2s 3s

execute if entity @s[scores={animation.timer=110..120}] run title @s title [{"text":"Ancient City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=100..110}] run title @s title [{"text":"A","obfuscated":false,"color":"dark_gray","bold":true},{"text":"ncient City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=90..100}] run title @s title [{"text":"An","obfuscated":false,"color":"dark_gray","bold":true},{"text":"cient City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=80..90}] run title @s title [{"text":"Anc","obfuscated":false,"color":"dark_gray","bold":true},{"text":"ient City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=70..80}] run title @s title [{"text":"Anci","obfuscated":false,"color":"dark_gray","bold":true},{"text":"ent City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=60..70}] run title @s title [{"text":"Ancie","obfuscated":false,"color":"dark_gray","bold":true},{"text":"nt City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=50..60}] run title @s title [{"text":"Ancien","obfuscated":false,"color":"dark_gray","bold":true},{"text":"t City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=40..50}] run title @s title [{"text":"Ancient","obfuscated":false,"color":"dark_gray","bold":true},{"text":" City","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=30..40}] run title @s title [{"text":"Ancient C","obfuscated":false,"color":"dark_gray","bold":true},{"text":"ity","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=20..30}] run title @s title [{"text":"Ancient Ci","obfuscated":false,"color":"dark_gray","bold":true},{"text":"ty","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=10..20}] run title @s title [{"text":"Ancient Cit","obfuscated":false,"color":"dark_gray","bold":true},{"text":"y","obfuscated":true,"color":"dark_blue","bold":true}]
execute if entity @s[scores={animation.timer=0..10}] run title @s title [{"text":"Ancient City","obfuscated":false,"color":"dark_gray","bold":true}]

scoreboard players operation @s animation.timer.a = @s animation.timer
scoreboard players operation @s animation.timer.a %= const10 X
execute if score @s animation.timer.a matches 0 if entity @s[scores={animation.timer=0..120}] run playsound minecraft:block.sculk.step master @s ~ ~ ~ 10 0.5 1
execute if score @s animation.timer.a matches 0 if entity @s[scores={animation.timer=0..120}] run playsound minecraft:block.copper.place master @s ~ ~ ~ 10 1.8 1

execute if entity @s[scores={animation.timer=0..10}] run title @s subtitle {"translate":"cursefight.advancement.animation.discovered","color":"yellow"}
execute if score @s animation.timer matches 15 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.7 0.1 1

scoreboard players remove @s animation.timer 1