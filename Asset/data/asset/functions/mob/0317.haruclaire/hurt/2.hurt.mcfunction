#> asset:mob/0317.haruclaire/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0317.haruclaire/hurt/1.trigger

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 怯み処理
    # 怯み継続
        execute if entity @s[tag=8T.Temp.Damage] if score @s 8T.DamageTimer matches ..119 run function asset:mob/0317.haruclaire/tick/app.general/5.continue_damage_animation
    # 怯み開始
        execute if entity @s[tag=8T.Temp.NotArmor] unless entity @s[tag=8T.Temp.Damage] run function asset:mob/0317.haruclaire/tick/app.general/4.start_damage_animation
    # 一定時間以上殴られ続けたら怯みキャンセル
        execute if entity @s[tag=8T.Temp.Damage] if score @s 8T.DamageTimer matches 120.. run function asset:mob/0317.haruclaire/tick/app.general/6.cancel_damage_animation
