#> asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/2.end
#
# アニメーションのイベントハンドラ 杖モード・あられ 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.IceBullet
    tag @s remove 8T.SkillEv.Rod.Idle.MoveToSide

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
