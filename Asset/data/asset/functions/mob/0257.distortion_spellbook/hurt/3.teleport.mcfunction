#> asset:mob/0257.distortion_spellbook/hurt/3.teleport
#
#
#
# @within function asset:mob/0257.distortion_spellbook/hurt/2.hurt

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# ランダムテレポート
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[9d,9d],[0d,2d],[9d,9d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/

# マーカーの位置にブロックがなかったらテレポートする
    execute at @e[type=marker,tag=SpreadMarker,distance=..13,limit=1] if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..13,limit=1]