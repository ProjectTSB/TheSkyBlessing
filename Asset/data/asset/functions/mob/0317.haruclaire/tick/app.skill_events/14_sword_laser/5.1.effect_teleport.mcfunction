#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/5.1.effect_teleport
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ テレポート演出
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.return hostile @a ~ ~ ~ 1 2
    particle end_rod ~ ~1 ~ 0.3 0.8 0.3 0.2 10 normal @a

# 残像召喚
    data modify storage api: Argument.ID set value 323
    execute at @s run function api:mob/summon

# 残像のポーズ設定
    execute if score @s 8T.AnimationTimer matches 59 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Laser0
    execute if score @s 8T.AnimationTimer matches 115 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Laser1
    execute if score @s 8T.AnimationTimer matches 137 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Laser2
