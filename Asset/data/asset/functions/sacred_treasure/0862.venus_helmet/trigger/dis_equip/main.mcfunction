#> asset:sacred_treasure/0862.venus_helmet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,862,6]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# 演出
    playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 0.5 2 0

# 一式効果削除
    execute if entity @s[tag=HL.Fullset] run function asset:sacred_treasure/0633.elec_armor/trigger/5.fullset_dis_equip


