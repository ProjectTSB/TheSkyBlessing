#> asset:mob/0059.jack_o_lantern/tick/reset
#
# 共通リセット処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/**

# タグ消す
    tag @s remove 1N.SkillMeteor
    tag @s remove 1N.SkillMissile
    tag @s remove 1N.SkillQuiz

# スコアを変える
    scoreboard players set @s 1N.Tick -100

# 確率でテレポ
    execute if predicate lib:random_pass_per/20 at @p run function asset:mob/0059.jack_o_lantern/tick/spread_tp