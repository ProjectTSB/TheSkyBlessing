#> asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.2.play_move_to_slash_animation
#
# アニメーションのイベントハンドラ 剣モード・斬撃コンボ アニメーション再生 移動→斬り
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/12_02_sword_slash_move_to_slash/play