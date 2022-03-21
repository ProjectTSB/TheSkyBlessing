#> asset:mob/0233.honey_flyer/tick/3.motion
#
#
#
# @within function asset:mob/0233.honey_flyer/tick/2.tick

#> Private
# @private
    #declare tag Target

# 翅演出
    function asset:mob/0233.honey_flyer/wing_vfx/

# 最寄りのプレイヤーにタグをつける
    tag @p[gamemode=!spectator] add Target

# 数値
    # デフォルト
        data modify storage lib: Argument.VectorMagnitude set value 0.7
    # かなり離れてる時に実行
        execute if entity @p[tag=Target,distance=30..40] run data modify storage lib: Argument.VectorMagnitude set value 0.8
    # 近い時に実行する
        execute if entity @p[tag=Target,distance=..9] run data modify storage lib: Argument.VectorMagnitude set value 0.6
# 実行
    # 適正距離の場合
        execute if entity @p[tag=Target,distance=9..40] facing entity @p[tag=Target,distance=..40] eyes rotated ~ ~-10 run function lib:motion/
    # 近い場合
        execute if entity @p[tag=Target,distance=..9] facing entity @p[tag=Target,distance=..9] eyes rotated ~180 ~-5 run function lib:motion/

# リセット
    data remove storage lib: Argument
# タグを消す
    tag @a remove Target
# スコアを消す
    scoreboard players reset @s 6H.Tick
