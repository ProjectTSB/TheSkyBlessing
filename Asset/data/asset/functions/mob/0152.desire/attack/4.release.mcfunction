#> asset:mob/0152.desire/attack/4.release
#
#
#
# @within function asset:mob/0152.desire/attack/2.attack


# 与えるダメージ
    data modify storage lib: Argument.Damage set value 55f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1
    execute as @p[tag=Victim,distance=..10] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.03 200

# タグリセット
    tag @s remove RunOnce
    tag @s remove 48.HasMP