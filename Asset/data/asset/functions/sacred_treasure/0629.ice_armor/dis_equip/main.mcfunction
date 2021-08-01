#> asset:sacred_treasure/0629.ice_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0629.ice_armor/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,629,6]
# 補正の削除
    function api:player_modifier/defense/water/remove


 # 演出
    playsound block.glass.break master @a ~ ~ ~ 0.4 0.8 0