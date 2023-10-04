#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/2.end
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Whip

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
