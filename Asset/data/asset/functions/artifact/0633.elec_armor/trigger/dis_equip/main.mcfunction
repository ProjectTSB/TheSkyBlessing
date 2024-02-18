#> asset:artifact/0633.elec_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0633.elec_armor/trigger/dis_equip/

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,633,5]
    function api:modifier/defense/thunder/remove

# 雷攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,633,5]
    function api:modifier/attack/thunder/remove

# 演出
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.1 0

# 一式効果削除
    execute if entity @s[tag=HL.Fullset] run function asset:artifact/0633.elec_armor/trigger/5.fullset_dis_equip
