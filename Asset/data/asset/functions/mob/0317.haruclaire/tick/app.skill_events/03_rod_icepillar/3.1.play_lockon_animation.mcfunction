#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/3.1.play_lockon_animation
#
# アニメーションのイベントハンドラ 杖モード・つらら アニメーション再生 ロックオン
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/03_01_rod_turara_lockon/play
