#> asset:mob/0327.eclael/tick/app.general/7.start_change_animation
#
# 武器持ち替えアニメーション再生
#
# @within function asset:mob/0327.eclael/hurt/app.1.change_phase


# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 武器持ち替えアニメーション再生開始
    tag @s add 93.Skill.Latter.Start
    tag @s add 93.Phase.Latter
    scoreboard players set @s 93.AnimationTimer 0
    scoreboard players set @s 93.ActionCount 0
