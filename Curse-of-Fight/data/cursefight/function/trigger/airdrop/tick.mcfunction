scoreboard players enable @a airdrop_position
execute as @a if score @s airdrop_position matches 1.. run function cursefight:trigger/airdrop/main 
execute as @a if score @s airdrop_position matches 1.. run scoreboard players set @s airdrop_position 0