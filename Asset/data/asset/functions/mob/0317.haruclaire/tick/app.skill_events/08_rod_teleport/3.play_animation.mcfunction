#> asset:mob/0317.haruclaire/tick/app.skill_events/08_rod_teleport/3.play_animation
#
# アニメーションのイベントハンドラ杖モード・テレポート アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/08_rod_teleport/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/08_01_rod_teleport/play