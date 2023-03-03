#> asset:artifact/0664.soul_fire_armor/trigger/fullset/fullset_dis_equip
#
# フルセット効果を消すよ
#
# @within function
#   asset:artifact/0664.soul_fire_armor/trigger/dis_equip/main
#   asset:artifact/0665.soul_fire_armor/trigger/dis_equip/main
#   asset:artifact/0666.soul_fire_armor/trigger/dis_equip/main
#   asset:artifact/0667.soul_fire_armor/trigger/dis_equip/main

# 演出
    function asset:artifact/0664.soul_fire_armor/trigger/fullset/particle2

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,664,0]
    function api:modifier/attack/fire/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,664,0]
    function api:modifier/mp_regen/remove

# 最大体力-10%
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-029800000003

# リセット
    tag @s remove IG.Fullset
    scoreboard players reset @s IG.AttackCT