#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.4.play_charge_1_animation
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ 溜めアニメーション
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/16_04_sword_charge_charge_1/play