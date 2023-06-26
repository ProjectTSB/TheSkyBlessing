#> asset:mob/0331.blazing_inferno/tick/skill_active
#
# 選択したスキルを出す
#
# @within function asset:mob/0331.blazing_inferno/tick/base_move/

# トリプルファイアボール
    execute if entity @e[tag=8N.Skill.TripleFireball] run function asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/tick
    execute if entity @e[tag=8N.Skill.DashPunch] run function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/tick