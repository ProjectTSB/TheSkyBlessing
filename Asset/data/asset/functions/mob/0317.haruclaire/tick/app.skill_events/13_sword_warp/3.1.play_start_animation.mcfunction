#> asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/3.1.play_start_animation
#
# アニメーションのイベントハンドラ 剣モード・ワープ斬りコンボ アニメーション再生 ワープ開始
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/13_01_sword_warp_start/play
