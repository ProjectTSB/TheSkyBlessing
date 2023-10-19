#> asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/2.end
#
# アニメーションのイベントハンドラ 前半・突き・怯み 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Spear.Damage

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
