#> asset:sacred_treasure/0625.flame_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0625.flame_armor/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,625,5]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# 演出
    playsound entity.generic.burn master @s