#> asset:mob/0311.blazing_inferno/tick/skill_active
#
# 選択したスキルを出す
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/

# トリプルファイアボール
    execute if entity @e[tag=8N.Skill.TripleFireball] run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick

# ダッシュパンチ
    execute if entity @e[tag=8N.Skill.DashPunch] run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick

# ファイアボム
    execute if entity @e[tag=8N.Skill.Firebomb] run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

# 地雷設置
    execute if entity @e[tag=8N.Skill.SpreadMine] run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/tick

# 召喚&方向転換
    execute if entity @e[tag=8N.Skill.Summon] run function asset:mob/0311.blazing_inferno/tick/skill/turn/tick