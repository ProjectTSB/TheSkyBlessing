#> asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/3.3.play_upper_animation
#
# アニメーションのイベントハンドラ 剣モード・ワープ斬りコンボ アニメーション再生 斬り上げ
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/13_03_sword_warp_slash_upper/play
