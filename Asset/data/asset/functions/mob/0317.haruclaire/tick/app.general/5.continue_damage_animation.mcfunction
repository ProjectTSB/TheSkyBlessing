#> asset:mob/0317.haruclaire/tick/app.general/5.continue_damage_animation
#
# 汎用処理 怯みアニメーションを継続して再生する
#
# @within function asset:mob/0317.haruclaire/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0317.haruclaire/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    tag @s add 8T.Skill.Sword.Damage
    scoreboard players set @s 8T.AnimationTimer 0

# ちょっとだけ怯み時間を短くする
    scoreboard players add @s 8T.DamageTimer 1