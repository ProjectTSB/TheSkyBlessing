#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.1.attack_rain
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# 演出
    playsound block.beacon.power_select hostile @a ~ ~ ~ 1 2
    execute positioned ~ ~6 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.2.effect_rain

# 弾召喚
    data modify storage api: Argument.ID set value 322
    execute facing entity @p feet run function api:mob/summon
