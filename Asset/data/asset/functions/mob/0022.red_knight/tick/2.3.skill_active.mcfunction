#> asset:mob/0022.red_knight/tick/2.3.skill_active
#
# スキル発動すれ
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# 攻撃技
    # 突進
        execute if entity @s[tag=M.SkillSlash] run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick
    # ブレイブコンボ
        execute if entity @s[tag=M.SkillCombo] run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick
    # パリィ
        execute if entity @s[tag=M.SkillParry] run function asset:mob/0022.red_knight/tick/skills/parry/1.tick
    # ヘヴィスラッシュウェーブ
        execute if entity @s[tag=M.SkillWave] run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/1.tick
    # フレイムピラー
        execute if entity @s[tag=M.SkillUltimate] run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/1.tick

# ダッシュ関連
    # トリプルダッシュ
        execute if entity @s[tag=M.DashTriple] run function asset:mob/0022.red_knight/tick/skills/0.dash/1.tick
    # ストレートダッシュ
        execute if entity @s[tag=M.DashStraight] run function asset:mob/0022.red_knight/tick/skills/straight_dash/1.tick
    # 獄門
        execute if entity @s[tag=M.DashStab] run function asset:mob/0022.red_knight/tick/skills/stab/1.tick

