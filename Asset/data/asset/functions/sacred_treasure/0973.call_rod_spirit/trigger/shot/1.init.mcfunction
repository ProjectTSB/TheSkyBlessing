#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/1.init
#
# 付近の敵へと向きを変える
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot

# 敵の方を向き、タグを変更
    execute facing entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~-2
    tag @s remove 87.ShotInit
    tag @s add 87.Shot

# 付近に敵がいないなら消える
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] run kill @s