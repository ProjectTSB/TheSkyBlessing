#> asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/2.end
#
# アニメーションのイベントハンドラ 後半・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Damage
    tag @s remove 93.Temp.Damage

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
