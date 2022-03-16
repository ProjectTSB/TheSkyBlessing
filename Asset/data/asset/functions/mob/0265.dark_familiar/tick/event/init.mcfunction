#> asset:mob/0265.dark_familiar/tick/event/init
#
#
#
# @within function asset:mob/0265.dark_familiar/tick/2.tick

# プレイヤーの方を向く
    execute as @e[type=area_effect_cloud,tag=7D.Rotater,sort=nearest,limit=1] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# タグ付与
    tag @s add 7D.Init