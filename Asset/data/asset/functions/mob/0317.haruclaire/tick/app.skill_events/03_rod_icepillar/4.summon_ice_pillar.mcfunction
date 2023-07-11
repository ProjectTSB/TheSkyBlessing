#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar
#
# アニメーションのイベントハンドラ 杖モード・つらら 攻撃地点を設置
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main

# 前方拡散でAECを召喚
    execute at @p run summon marker ~ ~20 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 6
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,distance=..30] at @p positioned ~ ~20 ~ rotated ~ 90 run function lib:forward_spreader/circle
# 召喚
    execute at @p positioned ~ ~20 ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..30] feet positioned ^ ^ ^20 run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.1.summon_ice_pillar_aec
# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0.3

# キル
    kill @e[tag=SpreadMarker]
