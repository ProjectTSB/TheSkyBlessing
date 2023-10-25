#> asset:mob/0327.eclael/tick/app.1_1.select_skill
#
# 使用するスキルを決定する
#
# @within function asset:mob/0327.eclael/tick/2.tick

# 耐性のリセット
    function asset:mob/0327.eclael/tick/app.general/12.end_guard_prepare

# デバッグ用強制再生
    # tag @s add 93.Skill.Latter.SpinSlash
    # tag @s add 93.Temp.MoveToLeft
# デバッグ用初期位置移動
    # tp @s 187 210 14

# 前半
    execute unless entity @s[tag=93.Phase.Latter] run function asset:mob/0327.eclael/tick/app.1_2.select_skill_former

# 後半
    execute if entity @s[tag=93.Phase.Latter] run function asset:mob/0327.eclael/tick/app.1_3.select_skill_latter
