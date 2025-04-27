##
 # file:    install.mcfunction
 # purpose: run when install datapack.
 # route:   cursefight:install
 #
 # Created by Waterball.
##

tellraw @a {"text":"感謝安裝 \u00A76 WaterBall Curse Of Fight \u00A7r！！","color":"#FFD700"}
tellraw @a ["> ",{"text":"相關連結：","color":"gray"},{"text":"【Discord】","color":"#5E00FF","click_event":{"action":"open_url","url":"https://discord.gg/kjBSvXKQBt"},"hoverEvent":{"action":"show_text","value": {"text":"點我進入","color":"white"}}},{"text":"｜指令包：","color":"gray"},{"text":"【開始設定】","color":"red","click_event":{"action":"run_command","command":"/function cursefight:.setup"},"hoverEvent":{"action":"show_text","value": {"text":"開始設置 curseOfFight，或使用 \u00A7b/function cursefight:.setup","color":"white"}}}]