#> asset:mob/0021.demon_eye/tick/attack
#
# 接触ダメージ 実行しているのはプレイヤー自身
#
# @within function asset:mob/0021.demon_eye/tick/2.tick

    data modify storage lib: Argument.Damage set value 4.0f
    data modify storage lib: Argument.AttackType set value "Malee"
    data modify storage lib: Argument.ElementType set value "None"
    function api:data_get/hurt_time
    execute if data storage api: {HurtTime:0s} run function lib:damage/