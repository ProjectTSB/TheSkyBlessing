#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.2.shot_init
#
# 付近の敵へと向きを変える
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick

# 敵の方を向き、タグを変更
    execute facing entity @e[type=#lib:hostile,distance=..20,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~-2
    tag @s remove ChuzFairyShotInit
    tag @s add ChuzFairyShot

# 付近に敵がいないなら消える
    execute unless entity @e[type=#lib:hostile,distance=..20,sort=nearest,limit=1] run kill @s