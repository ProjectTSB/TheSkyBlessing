#> asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.5.play_spin_animation
#
# アニメーションのイベントハンドラ 剣モード・斬撃コンボ アニメーション再生 回転斬り
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/12_05_sword_slash_spin/play