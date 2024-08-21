execute as @a[scores={use_skill=1..}] run function cursefight:career/use_skill

# 塔塔 miner
execute as @e[type=blaze,tag=miner] run function cursefight:career/miner/ultimate/tick

# accuracy_shot
execute as @e[type=arrow,tag=cursefight.accuracy_shot,predicate=cursefight:accuracy_shot] at @s unless entity @a[distance=..5] run kill @s
