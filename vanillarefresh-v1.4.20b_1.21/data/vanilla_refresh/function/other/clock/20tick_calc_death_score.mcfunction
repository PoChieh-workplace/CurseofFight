#inputs deaths into death average score for use
execute store result score @s refresh_player_deathaverage run scoreboard players get @s refresh_player_deaths
execute store result score @s refresh_player_deathaverage_decimal run scoreboard players get @s refresh_player_deaths

#multiplies
scoreboard players operation @s refresh_player_deathaverage_decimal *= num_1000 refresh_constants



#the calculation (averaging)
scoreboard players operation @s refresh_player_deathaverage /= @s refresh_player_hours
scoreboard players operation @s refresh_player_deathaverage_decimal /= @s refresh_player_hours


    #score!! (unrelated to the math stuff)
    execute store result score @s refresh_player_death_score run scoreboard players get @s refresh_player_deathaverage_decimal
    scoreboard players operation @s refresh_player_death_score /= 10 refresh_constants




#subtracts whole number from decimal score
scoreboard players operation @s refresh_player_deathaverage *= num_1000 refresh_constants
scoreboard players operation @s refresh_player_deathaverage_decimal -= @s refresh_player_deathaverage
scoreboard players operation @s refresh_player_deathaverage /= num_1000 refresh_constants
