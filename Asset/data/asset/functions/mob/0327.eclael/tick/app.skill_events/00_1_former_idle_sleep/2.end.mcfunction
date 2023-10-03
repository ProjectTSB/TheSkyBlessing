#> asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/2.end
#
# アニメーションのイベントハンドラ 前半・居眠り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Idle.Sleep
    tag @s remove 93.Temp.SleepDamage

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
