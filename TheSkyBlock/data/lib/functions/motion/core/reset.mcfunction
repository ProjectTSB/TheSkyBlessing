#> lib:motion/core/reset
#
# Scoreをリセットします
#
# @within function lib:motion/core/apply

# リセット処理
    scoreboard players reset $VectorMagnitude Lib
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    data remove storage lib: Pos
    kill @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1]