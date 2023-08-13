#> asset:mob/0324.slash_entity/slash/
#
#
#
# @within function asset:**

# 方向を決める
    summon marker ^ ^0.01 ^1 {Tags:["90.FacingMarker"]}

# モブを召喚
    data modify storage api: Argument.ID set value 324
    function api:mob/summon