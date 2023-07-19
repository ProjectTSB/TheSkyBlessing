#> asset:mob/0317.haruclaire/tick/app.general/4.start_damage_animation
#
# 汎用処理 怯みアニメーションを再生開始する
#
# @within function asset:mob/0317.haruclaire/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0317.haruclaire/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    tag @s add 8T.Skill.Sword.Damage
    scoreboard players set @s 8T.AnimationTimer 0

# 怯み時間調整用の開始処理
    tag @s remove 8T.Temp.NotArmor
    tag @s add 8T.Temp.Damage
    scoreboard players set @s 8T.DamageTimer 0

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.5
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.6