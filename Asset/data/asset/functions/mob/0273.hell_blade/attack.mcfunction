#> asset:mob/0273.hell_blade/attack
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# SFX
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 1

# ダメージ設定
    data modify storage lib: Argument.Damage set value 35f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"

# 補正実行
    function lib:damage/modifier

# 一番最寄りのプレイヤー（今回は接触したやつのハズ）のHurtTimeを取る
    execute as @p run function api:data_get/hurt_time

# HurTime取ってそれが0ならダメージを与える
    execute if data storage api: {HurtTime:0s} as @p run function lib:damage/

# リセット
    function lib:damage/reset