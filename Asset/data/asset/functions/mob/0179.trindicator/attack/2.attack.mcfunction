#> asset:mob/0179.trindicator/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0179.trindicator/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 2 200
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 0.6 1.3 0
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.dolphin.splash hostile @a ~ ~ ~ 0.6 1 0

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 9f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset
