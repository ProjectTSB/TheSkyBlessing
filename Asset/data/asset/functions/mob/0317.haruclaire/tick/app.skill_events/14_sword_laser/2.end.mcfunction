#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/2.end
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Sword.Laser

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
