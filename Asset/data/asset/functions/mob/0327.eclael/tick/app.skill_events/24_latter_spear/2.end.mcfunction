#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/2.end
#
# アニメーションのイベントハンドラ 後半・突き 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/**

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Spear
    tag @s remove 93.Temp.MoveToLeft
    tag @s remove 93.Temp.AttackHit

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# スケジュール処理強制終了
    tag @a remove 93.Temp.ScheduleTargetPlayer