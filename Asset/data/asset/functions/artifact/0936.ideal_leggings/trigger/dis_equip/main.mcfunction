#> asset:artifact/0936.ideal_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0936.ideal_leggings/trigger/dis_equip/

# 全耐性+5%削除
    data modify storage api: Argument.UUID set value [I;1,1,936,4]
    function api:modifier/defense/base/remove