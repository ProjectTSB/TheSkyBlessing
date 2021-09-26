#> asset:sacred_treasure/0669.blizzard_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0669.blizzard_armor/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,669,5]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,669,5]
# 補正の削除
    function api:player_modifier/defense/water/remove

# フルセット解除
      execute if data storage asset:context id.all{head:668,chest:669,legs:670,feet:671} run function asset:sacred_treasure/0669.blizzard_armor/10.fullset_dis_equip