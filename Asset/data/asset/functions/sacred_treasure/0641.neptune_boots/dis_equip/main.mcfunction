#> asset:sacred_treasure/0641.neptune_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0641.neptune_boots/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,641,5]
# 補正の削除
    function api:player_modifier/defense/water/remove
# フルセット解除
    tag @s[tag=HS.Complete] remove HS.Complete

