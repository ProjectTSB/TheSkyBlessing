#> asset:sacred_treasure/0634.elec_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0634.elec_leggings/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,634,6]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# 演出
    playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.4 1.1 0
