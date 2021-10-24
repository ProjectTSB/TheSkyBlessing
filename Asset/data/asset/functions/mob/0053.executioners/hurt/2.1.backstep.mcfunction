#> asset:mob/0053.executioners/hurt/2.1.backstep
#
# バックステップ（ほとんどチェーンソーゾンビと一緒）
#
# @within function asset:mob/0053.executioners/hurt/2.hurt
#> private
# @private
    #declare score_holder $VectorMagnitude

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.8

# 突進する
    scoreboard players set $VectorMagnitude Lib 100
    execute facing entity @p[gamemode=!spectator] feet rotated ~180 ~-10 run function lib:motion/

# エフェクト
    effect give @s speed 1 6

# リセット
    scoreboard players reset $VectorMagnitude