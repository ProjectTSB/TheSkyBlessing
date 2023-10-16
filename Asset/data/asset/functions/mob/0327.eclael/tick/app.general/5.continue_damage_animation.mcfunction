#> asset:mob/0327.eclael/tick/app.general/5.continue_damage_animation
#
# 汎用処理 怯みアニメーションを継続して再生する
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    tag @s add 93.Skill.Latter.Damage
    scoreboard players set @s 93.AnimationTimer 0

# ちょっとだけ怯み時間を短くする
    scoreboard players add @s 93.DamageTimer 1
