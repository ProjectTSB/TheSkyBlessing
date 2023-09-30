#> asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/2.end
#
# アニメーションのイベントハンドラ 前半・居合斬り・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Iai.Damage

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
