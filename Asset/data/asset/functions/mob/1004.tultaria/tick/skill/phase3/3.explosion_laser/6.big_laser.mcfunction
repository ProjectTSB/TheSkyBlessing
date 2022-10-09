#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/6.big_laser
#
# こっそり混ぜて撃ってるデカいレーザー
#
# @within
#   function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/4.shoot
#   function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/6.big_laser

# パーチクル
    particle dust 0.7 0 0.7 1.5 ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# 爆発
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/7.explosion

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add LandingTarget

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/8.hit

# 目の前にずらして再帰
    execute if block ~ ~ ~ #lib:no_collision if entity @s[distance=..30] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/6.big_laser