#> mob_manager:entity_finder/player_hurt_entity/filters/
#
#
#
# @within function mob_manager:entity_finder/player_hurt_entity/on_attack

# プレイヤーの OMD 取得
    function oh_my_dat:please
# tag付け
    tag @s add AttackedPlayer
# フィルタ
    execute as @e[type=#lib:living_without_player,nbt=!{HurtTime:0s},distance=..150] run function mob_manager:entity_finder/player_hurt_entity/filters/15
# リセット
    tag @s remove AttackedPlayer
