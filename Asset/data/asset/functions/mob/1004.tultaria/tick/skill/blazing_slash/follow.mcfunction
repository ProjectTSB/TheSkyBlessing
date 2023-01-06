#> asset:mob/1004.tultaria/tick/skill/blazing_slash/follow
#
# ゆっくりとプレイヤーを追う
#
# @within function asset:mob/1004.tultaria/tick/skill/blazing_slash/tick

# こっちを向く
    execute facing entity @p feet positioned ^ ^ ^0.05 run function asset:mob/1004.tultaria/tick/move/tereport

# 頭のモデル、向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~45 ~
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 演出
    particle minecraft:flame ~ ~1.2 ~ 0.3 0.7 0.3 0.01 2
    particle minecraft:smoke ~ ~1.2 ~ 0.3 0.7 0.3 0.01 2
