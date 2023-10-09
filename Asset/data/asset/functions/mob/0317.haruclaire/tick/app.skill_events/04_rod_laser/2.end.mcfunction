#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/2.end
#
# アニメーションのイベントハンドラ 杖モード・つらら 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.Laser

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
