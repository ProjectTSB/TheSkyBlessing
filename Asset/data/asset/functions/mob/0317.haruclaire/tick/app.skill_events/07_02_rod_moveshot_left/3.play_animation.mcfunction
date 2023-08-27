#> asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/3.play_animation
#
# アニメーションのイベントハンドラ杖モード・移動射撃・左 アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/07_02_rod_shot_move_left/play