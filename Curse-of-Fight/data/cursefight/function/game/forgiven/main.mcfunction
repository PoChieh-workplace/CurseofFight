execute if entity @a[team=white] unless entity @a[team=white,scores={death=0}] as @r[team=white] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=red] unless entity @a[team=red,scores={death=0}] as @r[team=red] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=blue] unless entity @a[team=blue,scores={death=0}] as @r[team=blue] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=yellow] unless entity @a[team=yellow,scores={death=0}] as @r[team=yellow] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=green] unless entity @a[team=green,scores={death=0}] as @r[team=green] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=aqua] unless entity @a[team=aqua,scores={death=0}] as @r[team=aqua] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=gray] unless entity @a[team=gray,scores={death=0}] as @r[team=gray] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=gold] unless entity @a[team=gold,scores={death=0}] as @r[team=gold] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=dark_red] unless entity @a[team=dark_red,scores={death=0}] as @r[team=dark_red] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=dark_blue] unless entity @a[team=dark_blue,scores={death=0}] as @r[team=dark_blue] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=dark_purple] unless entity @a[team=dark_purple,scores={death=0}] as @r[team=dark_purple] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=dark_aqua] unless entity @a[team=dark_aqua,scores={death=0}] as @r[team=dark_aqua] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=dark_green] unless entity @a[team=dark_green,scores={death=0}] as @r[team=dark_green] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=dark_gray] unless entity @a[team=dark_gray,scores={death=0}] as @r[team=dark_gray] run function cursefight:game/forgiven/respawn_team_by_one
execute if entity @a[team=light_purple] unless entity @a[team=light_purple,scores={death=0}] as @r[team=light_purple] run function cursefight:game/forgiven/respawn_team_by_one

scoreboard players set _forgiven_ activity_set 1