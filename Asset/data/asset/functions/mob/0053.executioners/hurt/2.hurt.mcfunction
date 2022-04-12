#> asset:mob/0053.executioners/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0053.executioners/hurt/1.trigger

# 確立でバックステップする
    execute if predicate lib:random_pass_per/50 run function asset:mob/0053.executioners/hurt/2.1.backstep