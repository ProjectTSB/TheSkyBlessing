#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main
#
# アニメーションのイベントハンドラ 杖モード・つらら 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.IcePillar

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
