#> asset:mob/9000.slash_entity/slash/
#
# 外部からはコレを呼び出す
#
# @within function asset:**

# 方向を決める
    summon marker ^ ^0.01 ^1 {Tags:["6Y0.FacingMarker"]}

# モブを召喚
    data modify storage api: Argument.ID set value 324
    function api:mob/summon