#> asset:mob/0053.executioners/hurt/2.1.backstep
#
# バックステップ（ほとんどチェーンソーゾンビと一緒）
#
# @within function asset:mob/0053.executioners/hurt/2.hurt

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.8

# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p[tag=Attacker,distance=..100] feet rotated ~180 -10 run function lib:motion/

# エフェクト
    effect give @s speed 1 6

# リセット
    data remove storage lib: Argument