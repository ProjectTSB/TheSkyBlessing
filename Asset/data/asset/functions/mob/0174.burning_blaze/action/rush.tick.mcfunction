#> asset:mob/0174.burning_blaze/action/rush.tick
#
#
#
# @within function asset:mob/0174.burning_blaze/tick/2.tick

# スコアを減らす
    scoreboard players remove @s 4U.ActionTime 1

# ヒットした相手にタグをつける
    execute positioned ^ ^ ^0.5 positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit
    execute positioned ^ ^ ^1.0 positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dz=1] add Hit

# 演出
    execute positioned ^ ^ ^0.5 run particle dripping_lava ~ ~0.5 ~ 0.2 0.2 0.2 0 10 normal
    execute positioned ^ ^ ^1.0 run particle dripping_lava ~ ~0.5 ~ 0.2 0.2 0.2 0 10 normal

# ActionTimeが終わった時に実行
    execute if score @s 4U.ActionTime matches 0 run function asset:mob/0174.burning_blaze/action/rush.hit
# ActionTimeが残ってるときに実行
    # ブロックにぶつかると発動
        execute if score @s 4U.ActionTime matches ..40 unless block ^ ^ ^1.0 #lib:air run function asset:mob/0174.burning_blaze/action/rush.hit
    # プレイヤーにヒットすると発動
        execute if score @s 4U.ActionTime matches ..40 if entity @p[tag=Hit] run function asset:mob/0174.burning_blaze/action/rush.hit

# ヒットタグを消す
    tag @a[tag=Hit] remove Hit

# ActionTimeが残ってる場合前進
    execute if score @s 4U.ActionTime matches ..40 if block ^ ^ ^1.0 #lib:air run tp @s ^ ^ ^1.0