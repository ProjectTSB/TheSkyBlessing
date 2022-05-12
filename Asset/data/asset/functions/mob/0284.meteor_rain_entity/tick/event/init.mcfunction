#> asset:mob/0284.meteor_rain_entity/tick/event/init
#
#
#
# @within function asset:mob/0284.meteor_rain_entity/tick/2.tick

#> Temp
# @private
    #declare tag SpreadMarker

    #execute unless entity @e[tag=Enemy,distance=..64,limit=1] run tp @s ~ ~ ~ ~ 90

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 1

# 前方2散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] rotated ~ 90 run function lib:forward_spreader/circle

# 発砲
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1]

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 1 force

# タグ削除
    tag @s remove 7W.Init