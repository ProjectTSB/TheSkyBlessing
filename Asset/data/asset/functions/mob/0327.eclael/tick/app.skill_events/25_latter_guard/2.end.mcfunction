#> asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/2.end
#
# アニメーションのイベントハンドラ 後半・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/**

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Guard.0
    tag @s remove 93.Skill.Latter.Guard.1
    tag @s remove 93.Skill.Latter.Guard.2
    tag @s remove 93.Temp.PrepareGuard
    tag @s remove 93.Temp.Guard

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
