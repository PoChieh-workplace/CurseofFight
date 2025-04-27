execute store result score @s cursefight.activity.demon_contract.benefit run random value 1..6
execute store result score @s cursefight.activity.demon_contract.curse run random value 1..6


execute if score @s cursefight.activity.demon_contract.benefit matches 1..3 at @s run summon minecraft:marker ~ ~ ~ {CustomName:[{"text":" 方塊互動距離 +2 "}],Tags:["cursefight.activity.demon_contract.marker"]}
