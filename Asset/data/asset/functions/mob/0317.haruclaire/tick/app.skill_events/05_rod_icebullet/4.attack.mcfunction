#> asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
#
# アニメーションのイベントハンドラ 杖モード・あられ 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/1.main

# 弾召喚
    data modify storage api: Argument.ID set value 319
    execute facing entity @p feet run function api:mob/summon