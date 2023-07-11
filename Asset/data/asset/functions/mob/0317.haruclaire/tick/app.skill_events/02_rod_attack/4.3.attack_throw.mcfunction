#> asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/4.2.attack_spear
#
# アニメーションのイベントハンドラ 杖モード・杖殴り 杖投げ
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main

# TODO：演出を練る
# 演出
    playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1
    