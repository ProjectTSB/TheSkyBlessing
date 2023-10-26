#> asset:mob/0327.eclael/tick/app.general/4.start_damage_animation
#
# 汎用処理 怯みアニメーションを再生開始する
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# 耐性消去
    effect clear @s resistance

# 怯み時間設定
    scoreboard players set @s 93.DamageTimer 0

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    tag @s add 93.Skill.Latter.Damage
    scoreboard players set @s 93.AnimationTimer 0

# 怯み時間調整用の開始処理
    tag @s remove 93.Temp.NotArmor
    tag @s add 93.Temp.Damage

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.5
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.6
