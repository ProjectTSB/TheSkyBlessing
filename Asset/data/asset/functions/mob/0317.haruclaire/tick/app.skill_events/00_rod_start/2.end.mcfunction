#> asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/2.end
#
# アニメーションのイベントハンドラ 杖モード・登場 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.Start

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
