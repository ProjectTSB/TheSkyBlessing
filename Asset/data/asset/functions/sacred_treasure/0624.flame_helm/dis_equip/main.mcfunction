#> asset:sacred_treasure/0624.flame_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0624.flame_helm/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# 演出
    playsound entity.generic.burn master @s ~ ~ ~ 0.2 1

# フルセットの耐性削除
    execute if entity @s[tag=HC.FullSet] run function asset:sacred_treasure/0625.flame_armor/5.fullset_disuequip
