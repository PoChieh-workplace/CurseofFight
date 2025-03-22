execute store result score @s cursefight.activity.demon_contract.benefit run random value 1..6
execute store result score @s cursefight.activity.demon_contract.curse run random value 1..6


execute if score @s cursefight.activity.demon_contract.benefit matches 1..3 at @s run summon minecraft:marker ~ ~ ~ {CustomName:'[{"text":" 移動速度增加 10% "}]',Tags:["cursefight.activity.demon_contract.marker"]}
execute if score @s cursefight.activity.demon_contract.benefit matches 4..6 at @s run summon minecraft:marker ~ ~ ~ {CustomName:'[{"text":" 挖掘速度增加 10% "}]',Tags:["cursefight.activity.demon_contract.marker"]}
execute if score @s cursefight.activity.demon_contract.benefit matches 7..9 at @s run summon minecraft:marker ~ ~ ~ {CustomName:'[{"text":" 移動速度減少 10% "}]',Tags:["cursefight.activity.demon_contract.marker"]}