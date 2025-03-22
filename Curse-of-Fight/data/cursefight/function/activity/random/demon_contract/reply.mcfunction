execute if score @s cursefight.activity.demon_contract.response matches 1 if score @s cursefight.activity.demon_contract.lvl matches 1..6 run function cursefight:activity/random/demon_contract/lvl1/allow
# execute if score @s cursefight.activity.demon_contract.response matches 1 if score @s cursefight.activity.demon_contract.lvl matches 4..5 run function cursefight:activity/random/demon_contract/lvl2/allow
# execute if score @s cursefight.activity.demon_contract.response matches 1 if score @s cursefight.activity.demon_contract.lvl matches 6 run function cursefight:activity/random/demon_contract/lvl3/allow

execute if score @s cursefight.activity.demon_contract.response matches 2 run tellraw @s ["",{"text":"Curse of Fight ","color":"#CA8EFF"},{"text":"【 掌管者 】","color":"dark_gray"},{"text":" >>> ","color":"#CA8EFF"},{"text":"哦？這麼快就放棄了？真無趣……但我會等你改變主意唷！","color":"gray"}]

scoreboard players reset @s cursefight.activity.demon_contract.response