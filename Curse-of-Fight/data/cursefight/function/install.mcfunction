##
 # file:    install.mcfunction
 # purpose: run when install datapack.
 # route:   cursefight:install
 #
 # Created by Waterball.
##
scoreboard objectives add career_chosen dummy
scoreboard objectives add damage_warn minecraft.custom:minecraft.damage_taken {"text":"通知受到傷害"}
scoreboard objectives add knowledge minecraft.used:minecraft.knowledge_book {"text":"獲得合成表"}
scoreboard objectives add use_skill minecraft.used:minecraft.warped_fungus_on_a_stick {"text":"使用技能"}
scoreboard objectives add open_chest minecraft.custom:minecraft.open_chest {"text":"打開箱子"}
scoreboard objectives add open_barrel minecraft.custom:minecraft.open_barrel {"text":"打開桶子"}
scoreboard objectives add respawning dummy {"text":"使用重生信標"}
scoreboard objectives add respawning_sec dummy {"text":"使用重生信標秒數"}
scoreboard objectives add respawning_if_firework dummy {"text":"使用重生信標警示"}
scoreboard objectives add survival_time dummy {"text":"存活時間"}
scoreboard objectives add villager_xp dummy {"text":"村民經驗"}
scoreboard objectives add village_friendly dummy {"text":"村民友好度"}
scoreboard objectives add found_player_time dummy {"text":"尋找敵人冷卻時間"}
scoreboard objectives add cursefight.activity.demon_contract.benefit dummy {"text":"惡魔契約好處"}
scoreboard objectives add cursefight.activity.demon_contract.harm dummy {"text":"惡魔契約成本"}
scoreboard objectives add cursefight_temp dummy {"text":"臨時"}
scoreboard objectives add magnelis_thornweaver_task_completed dummy {"text":"瑪格尼里斯的任務完成數量"}
scoreboard objectives add magnelis_thornweaver_task_count dummy {"text":"瑪格尼里斯的任務數量"}
scoreboard objectives add cursefight.object.tick dummy {"text":"物件時間"}


# 強制載入 0 0，動能座標用
forceload add 0 0

# 常數
scoreboard objectives add X dummy {"text":"常數"}

scoreboard players set const10 X 10
scoreboard players set const20 X 20
scoreboard players set const30 X 30
scoreboard players set const60 X 60
scoreboard players set const100 X 100
scoreboard players set positive X -1
scoreboard players set const1 X 1
scoreboard players set const2 X 2
scoreboard players set const3 X 3

# 訊息 info
scoreboard objectives add info dummy
scoreboard objectives add death deathCount "\u00A70【死亡數】"
scoreboard objectives add activity_set dummy
scoreboard objectives add player_random dummy
scoreboard objectives add show_info dummy "\u00A73【 遊戲事件 】"
scoreboard objectives add kills playerKillCount
scoreboard objectives add posX dummy
scoreboard objectives add posZ dummy
scoreboard objectives add _ultimate_cool_ dummy {"text":"絕招冷卻"}
scoreboard objectives add _skill_cool_ dummy {"text":"技能冷卻"}

# 遊戲時間設置
scoreboard players set _game_start_ info 0
scoreboard players set _timer_tick_ info 0
scoreboard players set _timer_sec_ info 0
scoreboard players set _timer_min_ info 0
scoreboard players set _mode_ info 0
scoreboard players set _teamcount_ info 2
scoreboard players set _worldborder_ info 50
scoreboard players set _border_reminder_ info 40
scoreboard players set _worldborder_shrink_ info 30
scoreboard players set _worldborder_min_range_ info 16
scoreboard players set _worldborder.range_ info 256
scoreboard players set _glowing_ info 80
scoreboard players set _ominous_ info 100
scoreboard players set _forgiven_ info 20
scoreboard players set _starteffect1_ info 0
scoreboard players set _if_no_nature_regeneration_ info 1
scoreboard players set _if_career_ info 0
scoreboard players set _spread_mod_ info 0
scoreboard objectives add cursefight_mob_spell_tick dummy "怪物施法時間"
scoreboard objectives add cursefight_mob_spell_max_tick dummy "怪物施法冷卻時間"
scoreboard objectives add airdrop_position trigger

# 動畫
scoreboard objectives add animation.timer.a dummy
scoreboard objectives add animation.timer dummy
scoreboard objectives add animation.playing dummy

# 資料紀錄
scoreboard objectives add health health
scoreboard objectives add cursefight_health dummy


data modify storage cursefight:airdrop Pos set value []

tellraw @a {"text":"感謝安裝 \u00A76 WaterBall Curse Of Fight \u00A7r！！","color":"#FFD700"}
tellraw @a ["> ",{"text":"相關連結：","color":"gray"},{"text":"【Discord】","color":"#5E00FF","click_event":{"action":"open_url","url":"https://discord.gg/kjBSvXKQBt"},"hoverEvent":{"action":"show_text","value": {"text":"點我進入","color":"white"}}},{"text":"｜指令包：","color":"gray"},{"text":"【開始設定】","color":"red","click_event":{"action":"run_command","command":"/function cursefight:.setup"},"hoverEvent":{"action":"show_text","value": {"text":"開始設置 curseOfFight，或使用 \u00A7b/function cursefight:.setup","color":"white"}}}]