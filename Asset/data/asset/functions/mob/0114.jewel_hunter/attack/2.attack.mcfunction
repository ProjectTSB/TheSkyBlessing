#> asset:mob/0114.jewel_hunter/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0114.jewel_hunter/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:block.amethyst_cluster.fall master @a ~ ~ ~ 1 2 0

# 固定7ダメージ
    data modify storage lib: Argument.Damage set value 6.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.Fixed set value 1b
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
    data remove storage lib: Argument