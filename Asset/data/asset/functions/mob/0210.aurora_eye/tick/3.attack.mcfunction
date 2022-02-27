#> asset:mob/0210.aurora_eye/tick/3.attack
#
# 攻撃
#
# @within function asset:mob/0210.aurora_eye/tick/2.tick

# VFX
    execute at @p[gamemode=!spectator] run particle dust 0.000 0.545 1.000 1 ~ ~ ~ 0.000 0.545 1.000 1 0 normal
    execute at @p[gamemode=!spectator] run particle dust 0.000 1.000 0.886 1 ~ ~ ~ 0.000 0.545 1.000 1 0 normal

# ダメージ設定
    data modify storage lib: Argument.Damage set value 33f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"

# 補正実行
    function lib:damage/modifier

# 一番最寄りのプレイヤー（今回は接触したやつのハズ）のHurtTimeを取る
    execute as @p[gamemode=!spectator] run function api:data_get/hurt_time

# HurTime取ってそれが0ならダメージを与える
    execute if data storage api: {HurtTime:0s} as @p[gamemode=!creative,gamemode=!spectator] run function lib:damage/

# リセット
    data remove storage lib: Argument

# クールタイム設定
    scoreboard players set @s 5U.AttackCT 20