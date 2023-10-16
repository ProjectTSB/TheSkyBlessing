#> asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/2.end
#
# アニメーションのイベントハンドラ 後半・射撃 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Shot

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
