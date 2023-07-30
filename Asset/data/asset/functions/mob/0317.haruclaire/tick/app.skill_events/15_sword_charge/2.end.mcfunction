#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/2.end
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Sword.Charge

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
