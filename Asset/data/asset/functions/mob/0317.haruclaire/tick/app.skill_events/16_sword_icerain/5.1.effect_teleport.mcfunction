#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ テレポート演出
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.return hostile @a ~ ~ ~ 1 2
    particle end_rod ~ ~1 ~ 0.3 0.8 0.3 0.2 10 normal @a
