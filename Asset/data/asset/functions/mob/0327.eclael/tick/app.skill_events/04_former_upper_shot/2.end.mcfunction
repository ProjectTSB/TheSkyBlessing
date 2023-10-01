#> asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/2.end
#
# アニメーションのイベントハンドラ 前半・射撃 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.UpperShot

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
