#> asset:artifact/0910.ignite/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0910.ignite/trigger/2.check_condition
#> Private
# @private
    #declare tag PA.MeleeHit
    #declare tag PA.SlashHit

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 殴った相手にタグを付ける
    tag @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] add PA.MeleeHit

# 演出
    execute as @e[type=#lib:living,type=!player,tag=PA.MeleeHit,distance=..10] at @s run particle minecraft:lava ~ ~ ~ 0 0 0 1 20
    #playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# 近接で殴った相手に800ダメ
# ダメージセット
    data modify storage lib: Argument.Damage set value 800.0f
# 第一属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 第二属性
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=PA.MeleeHit,distance=..10] run function lib:damage/

# 衝撃波演出
    execute positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function asset:artifact/0910.ignite/trigger/particle
    execute positioned ~ ~1 ~ positioned ^ ^ ^2.5 run function asset:artifact/0910.ignite/trigger/particle


# 近接で殴った相手以外に600ダメ
# 殴った相手以外にタグを付ける
    execute positioned ^ ^ ^1.5 run tag @e[type=#lib:living,type=!player,tag=!PA.MeleeHit,tag=!Uninterferable,distance=..3] add PA.SlashHit
    execute positioned ^ ^ ^2.5 run tag @e[type=#lib:living,type=!player,tag=!PA.MeleeHit,tag=!Uninterferable,distance=..3] add PA.SlashHit
# ダメージセット
    data modify storage lib: Argument.Damage set value 200.0f
# 補正functionを実行
    function lib:damage/modifier_continuation
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=PA.SlashHit,distance=..10] run function lib:damage/


# リセット
    function lib:damage/reset
    tag @e[type=#lib:living,type=!player,tag=PA.MeleeHit,distance=..10] remove PA.MeleeHit
    tag @e[type=#lib:living,type=!player,tag=PA.SlashHit,distance=..10] remove PA.SlashHit