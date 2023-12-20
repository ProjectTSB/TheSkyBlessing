#> asset:artifact/0641.spirit_garment/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0641.spirit_garment/trigger/dis_equip/

# 演出
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.7 1.2 1
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.7 1.0 1

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,641,4]
# 補正の追加
    function api:modifier/heal/remove

# 最大体力+8
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-028100000003