#> asset:mob/0321.mini_guardian/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0321.mini_guardian/hurt/1.trigger

# サウンド
    playsound minecraft:entity.guardian.hurt hostile @a ~ ~ ~ 2 2

# HurtTimeをスコア化したら軽いのでは？
    scoreboard players set @s 8X.HurtTime 20
    data modify entity @s NoAI set value 0b
