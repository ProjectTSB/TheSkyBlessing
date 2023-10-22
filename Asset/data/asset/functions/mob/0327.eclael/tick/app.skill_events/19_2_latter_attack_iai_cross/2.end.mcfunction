#> asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/2.end
#
# アニメーションのイベントハンドラ 後半・袈裟斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/**

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Iai

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
