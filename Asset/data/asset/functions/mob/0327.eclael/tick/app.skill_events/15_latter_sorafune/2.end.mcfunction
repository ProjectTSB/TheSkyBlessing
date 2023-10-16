#> asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/2.end
#
# アニメーションのイベントハンドラ 後半・宙船 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Sorafune

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
