#> asset:mob/0302.call_gun/tick/shot/1.ready
#
# 発砲準備をします
#
# @within function asset:mob/0302.call_gun/tick/2.tick

#> tag
# @private
    #declare tag SpreadMarker


# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.3

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes positioned ^ ^ ^0.4 run function asset:mob/0302.call_gun/tick/shot/2.shot

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 0.3 1.6 0
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 2
    particle minecraft:wax_on ^ ^ ^3 0 0 0 50 2 normal
# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing
    scoreboard players set @s 8E.Tick 0