#> asset:mob/0124.skull_harpy/tick/2.1.motion
#
#
#
# @within function asset:mob/0124.skull_harpy/tick/2.tick
#> private
# @private
    #declare score_holder $VectorMagnitude
    #declare tag Target

# 最寄りのプレイヤーにタグをつける
    tag @p[gamemode=!spectator] add Target

# 数値
    # デフォルト
        scoreboard players set $VectorMagnitude Lib 80
    # かなり離れてる時に実行
        execute if entity @p[tag=Target,distance=30..60] run scoreboard players set $VectorMagnitude Lib 150
    # 近い時に実行する
        execute if entity @p[tag=Target,distance=..9] run scoreboard players set $VectorMagnitude Lib 60
# 実行
    # 適正距離の場合
        execute if entity @p[tag=Target,distance=9..60] facing entity @p eyes rotated ~ ~10 run function lib:motion/
    # 近い場合
        execute if entity @p[tag=Target,distance=..9] facing entity @p eyes rotated ~180 ~-10 run function lib:motion/

# リセット
    scoreboard players reset $VectorMagnitude
# タグを消す
    tag @a remove Target
# スコアを消す
    scoreboard players reset @s 3G.Tick