#> asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/2.end
#
# アニメーションのイベントハンドラ 杖モード・待機 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.Idle
    tag @s remove 8T.SkillEv.Rod.Idle.MoveToHome
    tag @s remove 8T.SkillEv.Rod.Idle.MoveToSide

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
