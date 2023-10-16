#> asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/2.end
#
# アニメーションのイベントハンドラ 後半・七連斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Quick

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
