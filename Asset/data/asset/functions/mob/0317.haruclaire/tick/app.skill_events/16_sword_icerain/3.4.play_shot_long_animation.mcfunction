#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.4.play_shot_long_animation
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ 射撃アニメーションロング版
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/17_03_sword_rain_shot_1/play