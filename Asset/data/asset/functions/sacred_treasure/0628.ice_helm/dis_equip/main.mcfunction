#> asset:sacred_treasure/0628.ice_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0628.ice_helm/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,628,6]
# 補正の削除
    function api:player_modifier/defense/water/remove

# 演出
        playsound minecraft:block.glass.break master @a ~ ~ ~ 0.4 0.8 0
