#> asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/2.end
#
# アニメーションのイベントハンドラ 杖モード・射撃 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.Shot

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
