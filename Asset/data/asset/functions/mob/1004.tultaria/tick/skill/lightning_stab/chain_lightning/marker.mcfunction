#> asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/marker
#
# マーカーへのTick処理
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

# パーティクル
    particle minecraft:dust 0.878 1 0.333 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]
    particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..30]