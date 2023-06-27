#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/windup
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick

# 待機アニメを停止
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neurtal/stop

# パンチのアニメ
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/dash_windup/play

# サウンド
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 2 2