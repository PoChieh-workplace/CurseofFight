advancement revoke @s only cursefight:structure/magnelis_thornweaver_trapdoor
tag @s add magnelis_thornweaver_player_temp
execute as @e[type=minecraft:marker,tag=magnelis_thornweaver_task_trapdoor,distance=..30] if function cursefight:structure/magnelis_thornweaver/trapdoor/if_same_block run cursefight:structure/magnelis_thornweaver/trapdoor/task_complete
execute as @e[type=minecraft:marker,tag=magnelis_thornweaver_task_trapdoor,distance=..30] unless function cursefight:structure/magnelis_thornweaver/trapdoor/if_same_block run tag @s remove magnelis_thornweaver_task_completed
tag @s remove magnelis_thornweaver_player_temp