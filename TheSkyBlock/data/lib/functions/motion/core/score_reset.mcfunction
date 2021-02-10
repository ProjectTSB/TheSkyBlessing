#> lib:motion/core/score_reset
#
# Scoreをリセットします
#
# @within function lib:motion/core/apply

# リセット処理
    scoreboard players reset $VectorMagnitude Lib
    scoreboard players reset $VectorMagnitude.copy Temporary
    kill @e[type=area_effect_cloud,tag=MotionLibMarker,limit=1]