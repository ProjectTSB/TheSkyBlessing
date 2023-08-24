#> asset:mob/0055.hetukedah/tick/skill/otete_beam/beam/
#
#
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/beam/
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot

# パーティクル
    particle dust 1 1 0.5 1 ^ ^ ^0.5 0.1 0.1 0.1 0 3
    particle dust 1 1 0 1 ^ ^ ^ 0.1 0.1 0.1 0 3
    particle dust 0.7 0.7 0 1 ^ ^ ^-0.5 0.1 0.1 0.1 0 3

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/beam/hit

# 壁ヒットで炸裂
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:mob/0055.hetukedah/tick/skill/otete_beam/beam/hit

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0055.hetukedah/tick/skill/otete_beam/beam/