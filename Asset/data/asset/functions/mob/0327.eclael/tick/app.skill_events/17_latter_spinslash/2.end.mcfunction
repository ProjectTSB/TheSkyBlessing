#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/2.end
#
# アニメーションのイベントハンドラ 後半・回転斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.SpinSlash

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
