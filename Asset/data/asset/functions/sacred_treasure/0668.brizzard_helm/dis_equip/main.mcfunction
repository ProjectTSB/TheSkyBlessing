#> asset:sacred_treasure/0668.brizzard_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0668_brizzard_helm/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,668,6]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,668,6]
# 補正の削除
    function api:player_modifier/defense/water/remove

# フルセット解除
      execute if entity @s[tag=IL.FullSet] run function asset:sacred_treasure/0669.brizzard_armor/10.fullset_disequip