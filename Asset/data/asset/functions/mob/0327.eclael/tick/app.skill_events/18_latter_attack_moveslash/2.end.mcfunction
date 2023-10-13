#> asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/2.end
#
# アニメーションのイベントハンドラ 後半・袈裟斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/**

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.MoveSlash
    tag @s remove 93.Temp.Near

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
