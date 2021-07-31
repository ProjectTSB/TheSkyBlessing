#> asset:sacred_treasure/0638.neptune_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0638.neptune_helm/dis_equip/


# UUID
    data modify storage api: Argument.UUID set value [I;1,1,638,6]
# 補正の削除
    function api:player_modifier/defense/physical/remove
# フルセット解除
    tag @s[tag=HS.Complete] remove HS.Complete

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,638,6]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# フルセット解除
    tag @s[tag=HS.Complete] remove HS.Complete

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,638,6]
# 補正の削除
    function api:player_modifier/defense/water/remove
# フルセット解除
    tag @s[tag=HS.Complete] remove HS.Complete
