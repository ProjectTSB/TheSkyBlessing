#> asset:mob/0182.skull_raven/tick/3.motion
#
#
#
# @within function asset:mob/0182.skull_raven/tick/2.tick

#> private
# @private
    #declare tag Target

# 最寄りのプレイヤーにタグをつける
    tag @p[gamemode=!spectator] add Target

# 数値
    # デフォルト
        data modify storage lib: Argument.VectorMagnitude set value 1.2
    # かなり離れてる時に実行
        execute if entity @p[tag=Target,distance=30..60] run data modify storage lib: Argument.VectorMagnitude set value 1.8
    # 近い時に実行する
        execute if entity @p[tag=Target,distance=..9] run data modify storage lib: Argument.VectorMagnitude set value 0.9
# 実行
    # 適正距離の場合
        execute if entity @p[tag=Target,distance=9..60] facing entity @p eyes rotated ~ ~-5 run function lib:motion/
    # 近い場合
        execute if entity @p[tag=Target,distance=..9] facing entity @p eyes rotated ~180 ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument
# タグを消す
    tag @a remove Target
# スコアリセット
    scoreboard players reset @s 52.Tick