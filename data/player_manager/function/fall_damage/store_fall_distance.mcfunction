#> player_manager:fall_damage/store_fall_distance
#
#
#
# @within function player_manager:fall_damage/

# FallDistanceを取得する
    function api:data_get/fall_distance
# FallDistanceを記録しておく
    execute store result score @s OldFallDistance run data get storage api: FallDistance 10
# 初回tick判別用のタグ
    tag @s add Falling