#> asset:mob/0089.decapitation/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0089.decapitation/hurt/1.trigger

# 一定確率でダメージを受けて骨を落とす
    execute if predicate lib:random_pass_per/30 run function asset:mob/0089.decapitation/hurt/2.1.bone_drop

# 被ダメ時に加速
    effect give @s speed 1 2 true