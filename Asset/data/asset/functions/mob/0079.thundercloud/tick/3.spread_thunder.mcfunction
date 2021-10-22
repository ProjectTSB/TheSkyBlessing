#> asset:mob/0079.thundercloud/tick/3.spread_thunder
#
#
#
# @within function asset:mob/0079.thundercloud/tick/2.tick

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 向きを下に
    tp @s ~ ~ ~ ~ -90

# 前方拡散で進む方向にばらつきを
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 4.6
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 拡散マーカーをキル
    kill @e[type=marker,tag=SpreadMarker]

# スコアリセット
    scoreboard players reset @s 27.FallThunder

# 雷を落とす
    function asset:mob/0079.thundercloud/tick/4.lightning