#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/6.1.start_counter
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ カウンター開始
#
# @within asset:mob/0317.haruclaire/hurt/2.hurt

# 1回目
    execute if score @s 8T.AnimationTimer matches ..131 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/6.2.start_counter_0

# 2回目
    execute if score @s 8T.AnimationTimer matches 132.. run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/6.3.start_counter_1
