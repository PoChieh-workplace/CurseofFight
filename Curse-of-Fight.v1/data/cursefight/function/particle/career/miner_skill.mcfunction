scoreboard players add temp2 refresh_count 1
execute rotated ~ 0 run particle dust{color:[1.000,0.300,0.300],scale:3} ^ ^ ^15 ^ ^ ^10000000000000 0.00000000000002 0 force @a[distance=..32]
execute unless score temp2 refresh_count matches 72.. rotated ~5 ~ run function cursefight:particle/career/miner_skill
execute if score temp2 refresh_count matches 72.. run scoreboard players reset temp2 refresh_count