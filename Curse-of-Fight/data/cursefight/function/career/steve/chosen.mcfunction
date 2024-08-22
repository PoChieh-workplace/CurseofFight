scoreboard players set @s career_chosen 0
tellraw @s {"text":"你選擇了 \u00A76 【 史蒂夫 】 \u00A7r！！","color":"#FFD700"}
playsound minecraft:block.grass.break player @s
loot replace entity @s enderchest.0 loot cursefight:career/0000_steve
advancement revoke @s only cursefight:career_chosen/0000_steve