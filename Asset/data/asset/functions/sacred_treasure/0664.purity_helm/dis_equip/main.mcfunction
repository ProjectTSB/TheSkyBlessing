#> asset:sacred_treasure/0664.purity_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0664.purity_helm/dis_equip/

# 属性ダメージ量
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    function api:player_modifier/attack/base/remove

# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,1,664,6]

    function api:player_modifier/defense/physical/remove

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,1,664,6]

    function api:player_modifier/defense/magic/remove

