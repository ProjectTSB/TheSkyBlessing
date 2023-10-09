#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.2.play_charge_slash_animation
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ 溜め斬りアニメーション
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/16_02_sword_charge_slash_0/play