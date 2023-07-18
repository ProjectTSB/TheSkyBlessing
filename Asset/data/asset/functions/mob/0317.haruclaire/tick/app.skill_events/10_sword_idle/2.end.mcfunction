#> asset:mob/0317.haruclaire/tick/app.skill_events/10_sword_idle/2.end
#
# アニメーションのイベントハンドラ 剣モード・待機 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/10_sword_idle/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Sword.Idle

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
