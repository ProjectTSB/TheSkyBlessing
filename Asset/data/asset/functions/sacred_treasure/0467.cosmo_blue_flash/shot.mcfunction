#> asset:sacred_treasure/0467.cosmo_blue_flash/shot
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0467.cosmo_blue_flash/3.main
#   asset:sacred_treasure/0467.cosmo_blue_flash/shot
    #declare tag 7j.HitFlag
    #declare tag 7j.HitEntity

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:dolphin ~ ~1 ~ 0.1 0.1 0.1 1 30 force
    playsound entity.squid.death master @a ~ ~ ~ 1.0 2.0

# 着弾検知
    execute as @e[tag=Enemy,distance=..1.5,limit=1] run tag @s add 7j.HitEntity
    execute if entity @e[tag=7j.HitEntity] run tag @s add 7j.HitFlag

# 着弾処理
    execute as @e[tag=7j.HitEntity] run function asset:sacred_treasure/0467.cosmo_blue_flash/hit

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!7j.HitFlag,distance=..30] run function asset:sacred_treasure/0467.cosmo_blue_flash/shot