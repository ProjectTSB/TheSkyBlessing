#> asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/2.end
#
# アニメーションのイベントハンドラ 杖モード・移動射撃 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.MoveShot.Right

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
