#> asset:sacred_treasure/0665.purity_armor/5.fullset_dis_equip
#
#
#
# @within function asset:sacred_treasure/066?.purity_*/dis_equip/main

# タグ削除
    tag @s remove IH.Fullset

# フルセット追加補正削除

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/defense/fire/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/defense/water/remove

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,665,5]
    function api:player_modifier/attack/thunder/remove
