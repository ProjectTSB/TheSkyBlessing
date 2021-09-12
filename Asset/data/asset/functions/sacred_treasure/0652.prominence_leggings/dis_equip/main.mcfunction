#> asset:sacred_treasure/0652.prominence_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0652.prominence_leggings/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,652,4]
# 補正の削除
    function api:player_modifier/attack/fire/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,652,4]
# 補正の削除
    function api:player_modifier/defense/physical/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,652,4]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,652,4]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# フルセット判定
    execute if data storage asset:context id.all{head:650,chest:651,legs:652,feet:653} run function asset:sacred_treasure/0651.prominence_armor/5.fullset_dis_equip