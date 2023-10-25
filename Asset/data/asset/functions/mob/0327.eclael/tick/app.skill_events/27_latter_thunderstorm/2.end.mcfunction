#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/2.end
#
# アニメーションのイベントハンドラ 後半・待機 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Thunderstorm

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
