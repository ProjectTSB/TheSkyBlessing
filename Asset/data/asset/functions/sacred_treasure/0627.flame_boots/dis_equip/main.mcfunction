#> asset:sacred_treasure/0627.flame_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0627.flame_boots/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,627,3]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# 演出
    playsound entity.generic.burn master @s