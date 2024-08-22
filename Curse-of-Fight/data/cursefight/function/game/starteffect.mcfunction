execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ facing entity @e[tag=starteffect1,limit=1]
gamemode adventure @a[gamemode=creative]
playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1
execute at @e[tag=starteffect1] run playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~ 10
execute as @a[gamemode=!spectator] run attribute @s minecraft:generic.gravity base set 0.0
schedule function cursefight:game/transportloop 3s
schedule function cursefight:game/stopfalling 5t
effect give @a[gamemode=!spectator] minecraft:darkness 5




title @a times 1s 3s 1s
execute if score _mode_ info matches 0 run title @a subtitle "\u00A78\u00A7a擊殺所有敵人"
execute if score _mode_ info matches 0 run title @a title "\u00A76\u00A76經典模式"

execute if score _mode_ info matches 1 run title @a subtitle "\u00A78\u00A7a玩家將會無限重生"
execute if score _mode_ info matches 1 run title @a title "\u00A76\u00A76復甦模式"

execute if score _if_career_ info matches 1 run tellraw @a {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"職業模式","color":"gold"},{"text":"｜","color":"gold"},{"text":"啟動","color":"green"}]}