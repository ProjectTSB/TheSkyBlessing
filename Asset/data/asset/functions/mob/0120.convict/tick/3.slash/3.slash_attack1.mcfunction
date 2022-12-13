#> asset:mob/0120.convict/tick/3.slash/3.slash_attack1
#
# 攻撃があたったことを検知するため実行
#
# @within function asset:mob/0120.convict/tick/3.slash/1.slash

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 2

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# スコアをぶっ飛ばす
    execute if entity @p[distance=..3] run scoreboard players set @s 3C.Tick 1000