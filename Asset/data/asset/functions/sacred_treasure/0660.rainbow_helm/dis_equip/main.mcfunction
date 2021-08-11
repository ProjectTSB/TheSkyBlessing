#> asset:sacred_treasure/0660.rainbow_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0660.rainbow_helm/dis_equip/

# 全属性の補正を削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,660,6]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,660,6]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,660,6]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,660,6]
# 補正の削除
    function api:player_modifier/defense/water/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,660,6]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

