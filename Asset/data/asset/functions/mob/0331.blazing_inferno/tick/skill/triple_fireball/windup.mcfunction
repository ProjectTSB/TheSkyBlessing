#> asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/windup
#
# 予備動作
#
# @within function asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/tick

# アニメ実行
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/right1_active/play
