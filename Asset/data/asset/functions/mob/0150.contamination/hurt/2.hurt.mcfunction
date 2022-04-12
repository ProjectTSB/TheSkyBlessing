#> asset:mob/0150.contamination/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0150.contamination/hurt/1.trigger

# 確率で召喚
    execute if predicate lib:random_pass_per/20 run function asset:mob/0150.contamination/gus_summon