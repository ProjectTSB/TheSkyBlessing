#> asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/2.end
#
# アニメーションのイベントハンドラ 杖モード・武器持ち替え 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Rod.ToSword

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
