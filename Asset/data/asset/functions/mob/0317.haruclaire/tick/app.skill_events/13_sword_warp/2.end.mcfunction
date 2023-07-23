#> asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/2.end
#
# アニメーションのイベントハンドラ 剣モード・ワープ斬り 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Sword.Warp

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
