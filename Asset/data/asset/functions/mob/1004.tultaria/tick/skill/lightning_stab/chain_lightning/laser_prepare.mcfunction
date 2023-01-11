#> asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare
#
# 予告レーザー
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/active
#   asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare

# パーティクル
    particle electric_spark ~ ~ ~ 0 0 0 0.3 2 force @a[distance=..60]
    particle minecraft:dust 0.878 1 0.333 0.8 ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/damage

# 再帰
    execute if entity @s[tag=RW.ChainLightning1,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning2,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare
    execute if entity @s[tag=RW.ChainLightning2,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning3,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare
    execute if entity @s[tag=RW.ChainLightning3,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning4,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare
    execute if entity @s[tag=RW.ChainLightning4,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning1,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare