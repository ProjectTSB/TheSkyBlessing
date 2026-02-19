#> mob_manager:processing_tag/common_tag/check_fall_distance
#
# FallDistanceNBTをチェックします
#
# @within function mob_manager:processing_tag/common_tag/

#> Temp
# @private
    #declare score_holder $FallDistance

# FallDistanceを取得
    execute store result score $FallDistance Temporary run data get entity @s FallDistance 100
# 1以上なら負数に設定する
    execute if score $FallDistance Temporary matches 1.. run data modify entity @s FallDistance set value -200000f
# リセット
    scoreboard players reset $FallDistance Temporary
