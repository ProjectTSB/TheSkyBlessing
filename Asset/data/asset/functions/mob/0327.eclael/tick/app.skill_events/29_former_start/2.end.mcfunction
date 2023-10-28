#> asset:mob/0327.eclael/tick/app.skill_events/29_former_start/2.end
#
# アニメーションのイベントハンドラ 前半・待機 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/29_former_start/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Start

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
