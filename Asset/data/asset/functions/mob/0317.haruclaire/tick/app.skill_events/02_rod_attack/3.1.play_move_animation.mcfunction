#> asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/3.1.play_move_animation
#
# アニメーションのイベントハンドラ 杖モード・つらら アニメーション再生 ロックオン
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/02_01_rod_attack_move/play
