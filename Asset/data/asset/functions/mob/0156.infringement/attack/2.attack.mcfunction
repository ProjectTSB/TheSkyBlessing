#> asset:mob/0156.infringement/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0156.infringement/attack/1.trigger


# 演出
    execute at @p[tag=Victim,distance=..32] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..32] run particle dust 0.145 0.792 0.812 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    playsound minecraft:entity.guardian.hurt hostile @a ~ ~ ~ 0.6 1 0
    playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 0.5 0.7 0
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.4 1.3 0

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 30f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset

# 鈍足を与える
    effect give @p[tag=Victim,distance=..32] slowness 1 3