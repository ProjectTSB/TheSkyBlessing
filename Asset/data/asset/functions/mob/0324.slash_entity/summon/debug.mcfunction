#> asset:mob/0324.slash_entity/summon/debug
#
#
#
# @within function asset:mob/0324.slash_entity/summon/

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:}

# モブを召喚
    data modify storage api: Argument.ID set value 324
    function api:mob/summon