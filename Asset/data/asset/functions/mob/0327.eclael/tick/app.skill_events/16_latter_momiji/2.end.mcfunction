#> asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/2.end
#
# アニメーションのイベントハンドラ 後半・紅葉舞 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Momiji

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
