#> asset:mob/0319.haruclaire_ice_bullet/tick/summon/main
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/2.tick

# 演出
    execute if score @s 8V.Range matches 400 run function asset:mob/0319.haruclaire_ice_bullet/tick/summon/effect_summon
    execute if score @s 8V.Range matches 361 run function asset:mob/0319.haruclaire_ice_bullet/tick/summon/effect_shot
    particle electric_spark ~ ~0.9 ~ 0.3 0.3 0.3 0 1 force @a[distance=..30]

# Rotationが反映されてから頭防具を装備
    execute if score @s 8V.Range matches 390 run function asset:mob/0319.haruclaire_ice_bullet/tick/summon/init_after_summon

# 氷雨用initされている場合，即座に移動開始
    execute if score @s 8V.Range matches 390 if entity @s[tag=8V.IsIceRain] run scoreboard players set @s 8V.Range 362

# スコア減算
    scoreboard players remove @s 8V.Range 1