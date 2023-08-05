#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ テレポート演出
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.return hostile @a ~ ~ ~ 1 2
    particle end_rod ~ ~1 ~ 0.3 0.8 0.3 0.2 10 normal @a

# 残像召喚
    data modify storage api: Argument.ID set value 323
    execute at @s run function api:mob/summon

# 残像のポーズ設定
    execute if score @s 8T.AnimationTimer matches 81 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.RainStart
    execute if score @s 8T.AnimationTimer matches 126 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.RainShot0
    execute if score @s 8T.AnimationTimer matches 152 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.RainShot0
    execute if score @s 8T.AnimationTimer matches 209 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.RainShot1
    execute if score @s 8T.AnimationTimer matches 295 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.RainLaser
