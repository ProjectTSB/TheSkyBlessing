#> asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/active
#
# 連なるイカヅチ
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

# 対応するマーカーの方を見る
    execute if entity @s[tag=RW.ChainLightning1] facing entity @e[type=marker,tag=RW.ChainLightning2,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning2] facing entity @e[type=marker,tag=RW.ChainLightning3,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning3] facing entity @e[type=marker,tag=RW.ChainLightning4,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning4] facing entity @e[type=marker,tag=RW.ChainLightning1,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 再帰スタート
    execute at @s run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/laser_prepare

# サウンド
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1 2