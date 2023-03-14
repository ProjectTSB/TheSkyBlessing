#> asset:artifact/0295.call_elemental_familiar/trigger/shot/1.init
#
# 付近の敵へと向きを変える
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/fairy/4.shoot

# IDコピー
    scoreboard players operation @s 87.UserID = @e[type=armor_stand,tag=87.IDCopyBase,sort=nearest,limit=1] 87.UserID

# 敵の方を向き、タグを変更
    execute facing entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~-2
    tag @s remove 87.ShotInit
    tag @s add 87.Shot

# 付近に敵がいないなら消える
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] run kill @s