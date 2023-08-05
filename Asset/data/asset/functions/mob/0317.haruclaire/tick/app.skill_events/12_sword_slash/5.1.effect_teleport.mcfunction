#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.1.effect_teleport
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ テレポート演出
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.return hostile @a ~ ~ ~ 1 2
    particle end_rod ~ ~1 ~ 0.3 0.8 0.3 0.2 10 normal @a

# 残像召喚
    data modify storage api: Argument.ID set value 323
    execute at @s run function api:mob/summon

# 残像のポーズ設定
    execute if score @s 8T.AnimationTimer matches 99 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Upper
    execute if score @s 8T.AnimationTimer matches 116 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Lower
    execute if score @s 8T.AnimationTimer matches 215 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Upper
