#> asset:sacred_treasure/0743.evening_wind/trigger/dis_equip/remove_modifier
#
# 補正を削除
#
# @within function asset:sacred_treasure/0743.evening_wind/trigger/dis_equip/main

# MP消費
    scoreboard players set $Fluctuation Lib -150
    data modify storage lib: Argument.DisableLog set value true
    function lib:mp/fluctuation

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,743,7]
    function api:modifier/attack/fire/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02e700000007

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,743,7]
    function api:modifier/attack/water/remove

# Tag付与
    tag @s remove KN.Modifier