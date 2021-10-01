#> asset:sacred_treasure/0717.solar_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0717.solar_leggings/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
# 補正の削除
    function api:player_modifier/attack/thunder/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# フルセット削除
    execute if entity @s[tag=JW.Fullset] run function asset:sacred_treasure/0716.solar_armor/5.fullset_dis_equip