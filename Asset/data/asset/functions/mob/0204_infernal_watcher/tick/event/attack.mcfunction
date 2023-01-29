#> asset:mob/0204_infernal_watcher/tick/event/attack
#
# 接触ダメージ 実行しているのはプレイヤー自身
#
# @within function asset:mob/0204_infernal_watcher/tick/2.tick

# VFX
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 1.5 1

# ダメージ設定
    data modify storage lib: Argument.Damage set value 25f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"

# 補正実行
    function lib:damage/modifier

# 一番最寄りのプレイヤー（今回は接触したやつのハズ）のHurtTimeを取る
    execute as @p run function api:data_get/hurt_time

# HurTime取ってそれが0ならダメージを与える
    execute if data storage api: {HurtTime:0s} as @p run function lib:damage/

# リセット
    function lib:damage/reset

# クールタイム設定
    scoreboard players set @s 5O.AttackCT 20