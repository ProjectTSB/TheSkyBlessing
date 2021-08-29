#> asset:sacred_treasure/0687.soaring_wing/13.sneak
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/12.sneak_trigger

# 5秒以上スニークで浮遊を得る、までの演出

# 演出で前方拡散を使って周囲に上に行くパーティクルを出したい

# ワープ
    execute unless entity @e[tag=J3.SpreadMarker] run summon marker ~ ~ ~ {Tags:["J3.SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 100
    data modify storage lib: Argument.Spread set value 4.633d
    execute as @e[type=marker,tag=J3.SpreadMarker,limit=1] positioned ~ ~25 ~ rotated ~ 90 run function lib:forward_spreader/circle
    execute positioned ~ ~25 ~ facing entity @e[type=marker,tag=J3.SpreadMarker,limit=1] feet positioned ^ ^ ^25 run particle minecraft:cloud ~ ~1 ~ ~ ~100000 ~ 0.0000025 0

# マーカーをkill
    kill @e[type=marker,tag=J3.SpreadMarker]