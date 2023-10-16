#> asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/2.end
#
# アニメーションのイベントハンドラ 後半・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Damage.Move

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
