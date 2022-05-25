#> asset:mob/0280.the_desire_for_burning/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0280.the_desire_for_burning/hurt/1.trigger
#> private
# @private
    #declare tag 7S.This

# 被ダメ時に適当な方向に移動
# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","7S.This"]}
# 拡散する
    data modify storage lib: Argument.Bounds set value [[1d,1d],[1d,1d],[1d,1d]]
    execute as @e[type=marker,tag=7S.This,distance=..100] at @s run function lib:spread_entity/

# マーカーの方向へ移動
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @e[type=marker,tag=7S.This,distance=..100,sort=nearest,limit=1] feet run function lib:motion/

# キル
    kill @e[type=marker,tag=7S.This,distance=..100]
# リセット
    data remove storage lib: Argument