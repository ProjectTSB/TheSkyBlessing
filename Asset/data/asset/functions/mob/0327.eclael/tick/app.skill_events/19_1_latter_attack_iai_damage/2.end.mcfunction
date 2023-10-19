#> asset:mob/0327.eclael/tick/app.skill_events/19_1_latter_attack_iai_damage/2.end
#
# アニメーションのイベントハンドラ 前半・居合斬り・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/19_1_latter_attack_iai_damage/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Iai.Damage

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
