#> mob_manager:entity_finder/attacking_entity/filters/
#
#
#
# @within function mob_manager:entity_finder/attacking_entity/on_hurt

# プレイヤーの OMD 取得
    function oh_my_dat:please
# tag付け
    tag @s add AttackingPlayer
# フィルタ
    execute as @e[type=#lib:living,type=!player,distance=..150] run function mob_manager:entity_finder/attacking_entity/filters/15
# リセット
    tag @s remove AttackingPlayer
