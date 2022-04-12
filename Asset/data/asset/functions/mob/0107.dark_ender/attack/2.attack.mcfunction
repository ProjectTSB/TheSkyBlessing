#> asset:mob/0107.dark_ender/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0107.dark_ender/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle portal ~ ~1.2 ~ 1 1 1 1 60 normal @a

# 盲目付与
    effect give @p[tag=Victim,distance=..6] blindness 3 0 true