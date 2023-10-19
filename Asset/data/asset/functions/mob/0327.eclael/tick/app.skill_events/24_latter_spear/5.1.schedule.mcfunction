#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/5.1.schedule
#
# アニメーションのイベントハンドラ 後半・突き スケジュール
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/**

# プレイヤー対象に実行
    execute as @a[tag=93.Temp.ScheduleTargetPlayer] at @s run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/5.2.player_effect

# 着地していないプレイヤーが残っている場合、次tickも実行
    execute if entity @a[tag=93.Temp.ScheduleTargetPlayer,limit=1] run schedule function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/5.1.schedule 1t replace
