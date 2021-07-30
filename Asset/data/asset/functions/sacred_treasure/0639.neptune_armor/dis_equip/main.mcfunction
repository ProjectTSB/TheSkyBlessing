#> asset:sacred_treasure/0639.neptune_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0639.neptune_armor/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,639,5]
# 補正の削除
    function api:player_modifier/defense/water/remove
    # UUID
    data modify storage api: Argument.UUID set value [I;1,1,638,6]
    # 補正の削除
    function api:player_modifier/defense/thunder/remove

# 演出
