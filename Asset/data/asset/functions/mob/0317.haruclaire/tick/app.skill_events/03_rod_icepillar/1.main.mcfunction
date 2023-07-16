#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main
#
# アニメーションのイベントハンドラ 杖モード・つらら
# 前のハルクレアの処理から流用．
# 杖を回して敵をロックオン．
# 敵の足元からつららを生やして攻撃する．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## ロックオン
# animated javaアニメーション再生 (ロックオン 長さ：72tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/3.1.play_lockon_animation
# 杖振り演出
    execute if score @s 8T.AnimationTimer matches 10..70 positioned ^ ^0.8 ^0.5 run particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0.1 3
    execute if score @s 8T.AnimationTimer matches 10 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 18 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 26 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 34 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 42 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 50 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 58 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
    execute if score @s 8T.AnimationTimer matches 66 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 0.5 0.7
# 上昇
    execute if score @s 8T.AnimationTimer matches 1..5 at @s positioned ^ ^0.08 ^-0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..70 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 1..70 as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
# 攻撃地点設置
    execute if score @s 8T.AnimationTimer matches 20 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 31 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 42 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 51 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 58 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
    execute if score @s 8T.AnimationTimer matches 64 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar

## 発動
# animated javaアニメーション再生 (つらら発動 長さ：41tick)
    execute if score @s 8T.AnimationTimer matches 72 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/3.2.play_attack_animation
# 効果音
    execute if score @s 8T.AnimationTimer matches 80 run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1.3
# 上昇・下降
    execute if score @s 8T.AnimationTimer matches 77..85 at @s positioned ^ ^0.06 ^ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 97..112 at @s positioned ^ ^-0.05 ^ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 85..90 at @e[type=area_effect_cloud,tag=8T.SkillEv.Rod.IcePillar.AttackPos,distance=..30,sort=random,limit=7] run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/5.attack
# 終了
    execute if score @s 8T.AnimationTimer matches 113.. run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/2.end
