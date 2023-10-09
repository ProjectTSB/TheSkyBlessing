#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# 演出
    playsound entity.shulker.shoot hostile @a ~ ~ ~ 1 2
    playsound entity.shulker.shoot hostile @a ~ ~ ~ 1 1.6

# 弾召喚
    data modify storage api: Argument.ID set value 320
    execute facing entity @p feet run function api:mob/summon
