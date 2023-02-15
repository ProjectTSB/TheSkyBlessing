#> asset:mob/309.brave_arrow_finish/tick/event/hit
#
# ヒット時
#
# @within function asset:mob/309.brave_arrow_finish/tick/event/tp

# 多段ヒットしないように、ヒットした対象を貫通する
    execute at @s run tp @s ^ ^ ^1.5
    particle minecraft:electric_spark ~0.5 ~0.5 ~0.5 0 0 0 0.5 5 force @a[distance=..30]

# ヒットしたやつを対象としてダメージ
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run function asset:mob/309.brave_arrow_finish/tick/event/damage