#> asset:mob/0229.burning_blaze.shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0229.burning_blaze.shot/tick/1.trigger

# ヒット検知
    execute positioned ^ ^ ^0.5 positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit
    execute positioned ^ ^ ^1 positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit

# 演出
    particle flame ^ ^ ^0.5 0.1 0.1 0.1 0 3 normal
    particle flame ^ ^ ^1 0.1 0.1 0.1 0 3 normal

# ヒット時実行
    execute if entity @p[tag=Hit,tag=!PlayerShouldInvulnerable,distance=..5] run function asset:mob/0229.burning_blaze.shot/hit

# テレポ
    tp @s ^ ^ ^1

# 前方壁なら自殺
    execute unless block ^ ^ ^1 #lib:air run kill @s