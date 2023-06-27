#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/end
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick

# ダッシュ終了アニメを再生
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/dash_end/play

# 待機アニメを再生しなおす
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neurtal/play

# 攻撃判定と演出を目の前に出す
    execute anchored eyes positioned ^ ^-1 ^3 rotated 0 ~ run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion