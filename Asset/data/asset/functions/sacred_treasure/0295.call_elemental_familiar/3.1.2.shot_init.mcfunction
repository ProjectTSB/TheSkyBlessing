#> asset:sacred_treasure/0295.call_elemental_familiar/3.1.2.shot_init
#
# 付近の敵へと向きを変える
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/3.4.fairy_shoot

# 敵の方を向き、タグを変更
    execute facing entity @e[type=#lib:hostile,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~-2
    tag @s remove 295Fa.ShotInit
    tag @s add 295Fa.Shot

# 付近に敵がいないなら消える
    execute unless entity @e[type=#lib:hostile,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] run kill @s