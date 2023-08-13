#> asset:mob/0324.slash_entity/summon/debug
#
#
#
# @within function asset:mob/0324.slash_entity/summon/

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:65501,Scale:[5.0f,5.0f,5.0f],Rotation:45.0f}

# 方向を決める
    summon marker ^ ^0.01 ^1 {Tags:["90.FacingMarker"]}

# モブを召喚
    data modify storage api: Argument.ID set value 324
    function api:mob/summon