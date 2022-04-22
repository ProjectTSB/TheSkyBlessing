#> asset:mob/0082.thunder_curtain/tick/3.thunder1
#
# 雷を落とす位置とダメージを与える
#
# @within function asset:mob/0082.thunder_curtain/tick/2.tick

# 移動
    tp @s ^ ^ ^0.3

# 雷を落とす
    function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^1.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^3 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^4.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^-1.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^-3 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^-4.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2

# 範囲内にいたプレイヤーにダメージを与える
    data modify storage lib: Argument.Damage set value 28.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @a[tag=ThunderTarget,distance=..30] at @s run function lib:damage/modifier

# リセット
    data remove storage lib: Argument
    tag @a[tag=ThunderTarget,distance=..30] remove ThunderTarget