#> asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/3.play_animation
#
# アニメーションのイベントハンドラ 杖モード・武器持ち替え アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/09_01_rod_to_sword/play