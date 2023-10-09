#> asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack
#
# アニメーションのイベントハンドラ 杖モード・移動射撃 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/1.main

# 演出
    playsound entity.shulker.shoot hostile @a ~ ~ ~ 1 2
    playsound entity.shulker.shoot hostile @a ~ ~ ~ 1 1.6

# 弾召喚
    data modify storage api: Argument.ID set value 320
    execute facing entity @p feet run function api:mob/summon
