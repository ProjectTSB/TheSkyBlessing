#> asset:sacred_treasure/0934.ideal_helmet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0934.ideal_helmet/trigger/dis_equip/

# 全耐性+5%削除
    data modify storage api: Argument.UUID set value [I;1,1,934,6]
    function api:player_modifier/defense/base/remove
