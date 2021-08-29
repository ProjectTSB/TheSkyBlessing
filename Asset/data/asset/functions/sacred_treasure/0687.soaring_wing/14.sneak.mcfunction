    #> asset:sacred_treasure/0687.soaring_wing/14.sneak
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/13.sneak_trigger

# 5秒以上スニークで浮遊を得る、までの演出

# 演出で前方拡散を使って周囲に上に行くパーティクルを出したい

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["J3.SpreadMarker"]}
# 前方拡散を上方向に実行
    data modify storage lib: Argument.Distance set value 20
    data modify storage lib: Argument.Spread set value 4.5
    execute as @e[type=marker,tag=J3.SpreadMarker,limit=1] at @s rotated ~ -90 run function lib:forward_spreader/circle
# パーティクルを出す
    execute at @e[type=marker,tag=J3.SpreadMarker,limit=1] positioned ~ ~-20 ~ run particle minecraft:cloud ~ ~1 ~ ~ ~100000 ~ 0.000025 0

# マーカーをkill
    kill @e[type=marker,tag=J3.SpreadMarker]