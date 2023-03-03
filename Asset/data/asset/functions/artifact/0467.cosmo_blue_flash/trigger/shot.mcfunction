#> asset:artifact/0467.cosmo_blue_flash/trigger/shot
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0467.cosmo_blue_flash/trigger/3.main
#   asset:artifact/0467.cosmo_blue_flash/trigger/shot

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:dolphin ~ ~ ~ 0.1 0.1 0.1 1 30 force

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,dx=0,sort=nearest,limit=1] run tag @e[tag=Enemy,dx=0,sort=nearest,limit=1] add CZ.HitEntity
    execute if entity @e[tag=CZ.HitEntity,distance=..40] run tag @s add CZ.HitFlag

# 再帰
    execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision if entity @s[tag=!CZ.HitFlag,distance=..30] run function asset:artifact/0467.cosmo_blue_flash/trigger/shot