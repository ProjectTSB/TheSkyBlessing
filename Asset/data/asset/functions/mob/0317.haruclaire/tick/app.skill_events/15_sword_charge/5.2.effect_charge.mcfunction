#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.2.effect_charge
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ 溜め演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

# 剣演出
    particle dust 1 1000000000 1000000000 1 ^ ^ ^2.7 0 0 0 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^2.4 0 0 0 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^2.1 0 0 0 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^1.8 0.1 0.1 0.1 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^1.5 0.1 0.1 0.1 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^1.2 0.1 0.1 0.1 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^0.9 0.12 0.12 0.12 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^0.6 0.12 0.12 0.12 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^0.3 0.12 0.12 0.12 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ^ ^ ^0 0.12 0.12 0.12 1 10 normal @a

# TODO:良い感じの演出
# 仮
execute if score @s 8T.AnimationTimer matches 20 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 30 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 40 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 50 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 60 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 70 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 80 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle

execute if score @s 8T.AnimationTimer matches 160 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 170 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 180 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 190 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 200 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 210 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle
execute if score @s 8T.AnimationTimer matches 220 at @s positioned ~ ~1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.3.effect_charge_circle