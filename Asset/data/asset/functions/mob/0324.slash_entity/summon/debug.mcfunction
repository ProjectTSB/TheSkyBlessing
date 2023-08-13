#> asset:mob/0324.slash_entity/summon/debug
#
#
#
# @within function asset:mob/0324.slash_entity/summon/

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:65501,Scale:[3.0f,3.0f,3.0f],Rotation:90.0f}

# 方向を決める
    summon marker ^ ^ ^1 {Tags:["90.FacingMarker"]}

# モブを召喚
    data modify storage api: Argument.ID set value 324
    function api:mob/summon

#
    execute as @e[type=item_display,sort=nearest,limit=1] run say yo

# マーカーキル
    kill @e[tag=90.FacingMarker]