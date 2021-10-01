#> asset:sacred_treasure/0651.prominence_armor/5.fullset_dis_equip
#
#
#
# @within function
#   asset:sacred_treasure/0650.prominence_helm/dis_equip/main
#   asset:sacred_treasure/0651.prominence_armor/dis_equip/main
#   asset:sacred_treasure/0652.prominence_leggings/dis_equip/main
#   asset:sacred_treasure/0653.prominence_boots/dis_equip/main

# タグ削除
    tag @s remove I3.Fullset

# 火ダメージ量+10%
    data modify storage api: Argument.UUID set value [I;1,1,651,0]
    function api:player_modifier/attack/fire/remove

# 専用スコアリセット
    scoreboard players reset @s I3.IsFighting
    scoreboard players reset @s I3.AttackCool
    scoreboard players reset @s I3.ParticleTick