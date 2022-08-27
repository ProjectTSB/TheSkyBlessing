#> asset:mob/1011.meteor/summon/3.init
#
#
#
# @within function asset:mob/1011.meteor/summon/2.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 1

# 拡散する
    execute as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] rotated ~ 90 run function lib:forward_spreader/circle

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..50,limit=1]

# 速度と飛距離
    scoreboard players set @s S3.Range 800
    scoreboard players set @s S3.Speed 16

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..50]