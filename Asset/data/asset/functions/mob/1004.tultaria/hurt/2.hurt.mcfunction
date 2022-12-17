#> asset:mob/1004.tultaria/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/1004.tultaria/hurt/1.trigger

# 演出
    playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7

# 体力チェック
    function asset:mob/1004.tultaria/hurt/3.check_health
