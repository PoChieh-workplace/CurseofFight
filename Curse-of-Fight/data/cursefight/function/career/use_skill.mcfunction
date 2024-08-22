execute if score @s career_chosen matches 1 as @s run function cursefight:career/miner/skill/init
execute if score @s career_chosen matches 2 as @s run function cursefight:career/queen/skill/init

tellraw @s {"text":"","extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"使用技能","color":"gray"}]}
scoreboard players set @s use_skill 0