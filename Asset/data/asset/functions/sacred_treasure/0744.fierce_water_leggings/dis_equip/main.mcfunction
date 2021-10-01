#> asset:sacred_treasure/0744.fierce_water_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0744.fierce_water_leggings/dis_equip/

# 補正削除

# 物理ダメージ
    data modify storage api: Argument.UUID set value [I;1,1,744,4]
    function api:player_modifier/attack/physical/remove

# 水ダメージ
    data modify storage api: Argument.UUID set value [I;1,1,744,4]
    function api:player_modifier/attack/water/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,744,4]
    function api:player_modifier/defense/water/remove


# フルセット解除
    execute if entity @s[tag=KN.Fullset] run function asset:sacred_treasure/0743.fierce_water_armor/5.fullset_dis_equip