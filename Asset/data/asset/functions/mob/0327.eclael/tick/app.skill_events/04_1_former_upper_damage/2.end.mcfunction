#> asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/2.end
#
# アニメーションのイベントハンドラ 前半・曲射・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.UpperShot.Damage

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
