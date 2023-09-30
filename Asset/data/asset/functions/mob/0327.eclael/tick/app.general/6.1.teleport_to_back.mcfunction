#> asset:mob/0317.haruclaire/tick/app.general/6.1.teleport_to_back
#
# 汎用処理 怯みキャンセル 後ろに移動
#
# @within function asset:mob/0317.haruclaire/tick/app.general/6.cancel_damage_animation

# 移動
    execute positioned ^ ^ ^-1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute positioned ^ ^ ^-2 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute positioned ^ ^ ^-3 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute positioned ^ ^ ^-4 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute positioned ^ ^ ^-5 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute positioned ^ ^ ^-6 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute positioned ^ ^ ^-7 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~