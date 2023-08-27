#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.3.play_hide_animation
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ 消去アニメーション
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/99_01_hide/play