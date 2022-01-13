#> asset:sacred_treasure/0467.cosmo_blue_flash/trigger/shot
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0467.cosmo_blue_flash/trigger/3.main
#   asset:sacred_treasure/0467.cosmo_blue_flash/trigger/shot

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:dolphin ~ ~ ~ 0.1 0.1 0.1 1 30 force

# 着弾検知
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..1.5,limit=1] run tag @s add CZ.HitEntity
    execute if entity @e[tag=CZ.HitEntity] run tag @s add CZ.HitFlag

# 着弾処理
    execute as @e[tag=CZ.HitEntity] run function asset:sacred_treasure/0467.cosmo_blue_flash/trigger/hit

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!CZ.HitFlag,distance=..30] run function asset:sacred_treasure/0467.cosmo_blue_flash/trigger/shot