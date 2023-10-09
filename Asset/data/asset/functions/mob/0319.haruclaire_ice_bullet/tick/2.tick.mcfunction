#> asset:mob/0319.haruclaire_ice_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/1.trigger

# 召喚
    execute if score @s 8V.Range matches 361.. run function asset:mob/0319.haruclaire_ice_bullet/tick/summon/main
# 移動
    execute if score @s 8V.Range matches ..360 run function asset:mob/0319.haruclaire_ice_bullet/tick/move/main