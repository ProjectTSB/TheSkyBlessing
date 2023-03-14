#> asset:artifact/0639.spirit_garment/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0639.spirit_garment/trigger/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,639,5]
# 補正の追加
    function api:modifier/heal/remove

# 最大体力+8
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-027f00000005