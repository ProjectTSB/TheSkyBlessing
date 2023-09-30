#> asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/2.end
#
# アニメーションのイベントハンドラ 前半・居合斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Iai

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
