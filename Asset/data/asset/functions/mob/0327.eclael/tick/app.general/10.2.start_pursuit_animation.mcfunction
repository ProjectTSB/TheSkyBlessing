#> asset:mob/0327.eclael/tick/app.general/10.2.start_pursuit_animation
#
# 汎用処理 追撃を行う
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 追撃アニメーション再生開始
    tag @s add 93.Skill.Latter.Pursuit
    scoreboard players set @s 93.AnimationTimer 0
