#> asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/2.end
#
# アニメーションのイベントハンドラ 剣モード・怯み 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Sword.Damage

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1

# 怯み終了
    tag @s remove 8T.Temp.Damage