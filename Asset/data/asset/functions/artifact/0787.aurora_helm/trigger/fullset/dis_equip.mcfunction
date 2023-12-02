#> asset:artifact/0787.aurora_helm/trigger/fullset/dis_equip
#
# フルセット解除時の処理
#
# @within function
#   asset:artifact/0787.aurora_helm/trigger/dis_equip/main
#   asset:artifact/0788.aurora_armor/trigger/dis_equip/main
#   asset:artifact/0789.aurora_leggings/trigger/dis_equip/main
#   asset:artifact/0790.aurora_boots/trigger/dis_equip/main

# Tagを消す
    tag @s remove LT.Fullset

# フルセットの補正を解除

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,1,787,0]
    function api:modifier/attack/thunder/remove

# MP回復
    data modify storage api: Argument.UUID set value [I;1,1,787,0]
    function api:modifier/mp_regen/remove