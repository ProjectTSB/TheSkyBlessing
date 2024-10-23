#> mob_manager:entity_finder/entity_hurt_player/filters/
#
#
#
# @within function mob_manager:entity_finder/entity_hurt_player/on_hurt

# プレイヤーの OMD 取得
    function oh_my_dat:please
# tag付け
    tag @s add DamagedPlayer
# フィルタ
    execute as @e[type=#lib:living,type=!player,distance=..150] run function mob_manager:entity_finder/entity_hurt_player/filters/15
# リセット
    tag @s remove DamagedPlayer
