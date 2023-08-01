#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/2.end
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ 終了
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# スキル判別用タグ消去
    tag @s remove 8T.Skill.Sword.IceRain

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1
