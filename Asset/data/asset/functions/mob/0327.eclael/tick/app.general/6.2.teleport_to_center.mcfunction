#> asset:mob/0317.haruclaire/tick/app.general/6.2.teleport_to_center
#
# 汎用処理 怯みキャンセル 中心点に移動
#
# @within function asset:mob/0317.haruclaire/tick/app.general/6.cancel_damage_animation

# 移動
    execute facing entity @p feet rotated ~ 0 run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-2 ~ ~ ~
    execute facing entity @p feet rotated ~ 0 run tp @s ~ ~-2 ~ ~ ~