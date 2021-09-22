#> asset:sacred_treasure/0640.neptune_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0640.neptune_leggings/dis_equip/


# UUID
    data modify storage api: Argument.UUID set value [I;1,1,640,4]
# 補正の削除
    function api:player_modifier/attack/water/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,640,4]
# 補正の削除
    function api:player_modifier/defense/physical/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,640,4]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,640,4]
# 補正の削除
    function api:player_modifier/defense/water/remove

# フルセット解除
    execute if data storage asset:context id.all{head:638,chest:639,legs:640,feet:641} run function asset:sacred_treasure/0639.neptune_armor/9.fullset_dis_equip

