#> asset:mob/0301.sinful_thoughts/tick/2.gun/3.deviation_rotate
#
# 偏差撃ちをするための回転
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.gun/1.gun

#> tag
# @private
    #declare tag 8D.DeviationMarker

# 最寄りのプレイヤーの前方にマーカーを召喚
    execute as @p[gamemode=!spectator,distance=..30] at @s positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:["8D.DeviationMarker"]}

# マーカーを見る
    execute facing entity @e[type=marker,tag=8D.DeviationMarker,distance=..40] feet rotated ~90 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport

# マーカー消す
    kill @e[type=marker,tag=8D.DeviationMarker,distance=..40]

# ただしプレイヤーが動いていない場合シンプルにプレイヤーを狙う
    execute unless entity @p[gamemode=!spectator,predicate=lib:is_player_moving,distance=..30] facing entity @p[gamemode=!spectator,distance=..40] feet rotated ~90 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport