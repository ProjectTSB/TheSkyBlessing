#> asset:sacred_treasure/0787.aurora_helm/trigger/fullset/dis_equip
#
# フルセット解除時の処理
#
# @within function
#   asset:sacred_treasure/0787.aurora_helm/trigger/dis_equip/main
#   asset:sacred_treasure/0788.aurora_armor/trigger/dis_equip/main
#   asset:sacred_treasure/0789.aurora_leggings/trigger/dis_equip/main
#   asset:sacred_treasure/0790.aurora_boots/trigger/dis_equip/main

# フルセットの補正を解除

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,1,787,0]
    function api:player_modifier/attack/thunder/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-031300000000