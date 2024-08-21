execute as @a[gamemode=survival,team=!black] at @s run summon minecraft:ominous_item_spawner ~ ~1 ~ {spawn_item_after_ticks:200,item:{"id":"splash_potion",components:{potion_contents:{potion:"minecraft:harming"}}}}

execute if score _game_start_ info matches 1 run schedule function cursefight:game/ominous/summon/potion 30s