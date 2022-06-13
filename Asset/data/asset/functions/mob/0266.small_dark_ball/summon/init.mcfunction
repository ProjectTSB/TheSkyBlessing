#> asset:mob/0266.small_dark_ball/summon/init
#
#
#
# @within function asset:mob/0266.small_dark_ball/summon/2.summon

#> SpreadLib
    # @private
    #declare tag SpreadMarker

# こっち向く
    execute facing entity @p[gamemode=!spectator,distance=..30] eyes run tp @s ~ ~ ~ ~ ~

# スコア
    scoreboard players set @s 7E.Range 400
    scoreboard players set @s 7E.Speed 5

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute facing entity @p[gamemode=!spectator,distance=..30] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# マーカー位置のほうを向く
    kill @e[type=marker,tag=SpreadMarker]