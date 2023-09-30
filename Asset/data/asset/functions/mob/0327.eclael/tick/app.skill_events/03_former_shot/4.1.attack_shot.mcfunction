#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/4.1.attack_shot
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

# TODO：演出を練る
# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.8
    particle flash ~ ~ ~ 0 0 0 0 1

