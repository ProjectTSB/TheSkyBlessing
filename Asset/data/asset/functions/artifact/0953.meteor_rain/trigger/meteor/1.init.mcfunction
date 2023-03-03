#> asset:artifact/0953.meteor_rain/trigger/meteor/1.init
#
#
#
# @within function asset:artifact/0953.meteor_rain/trigger/7.cast_meteor

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

# タグ削除
    tag @s remove QH.MeteorInit

# 速度と飛距離
    scoreboard players set @s QH.Range 800
    scoreboard players set @s QH.Speed 16

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..50]