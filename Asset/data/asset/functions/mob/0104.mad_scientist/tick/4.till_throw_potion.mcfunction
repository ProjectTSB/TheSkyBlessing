#> asset:mob/0104.mad_scientist/tick/4.till_throw_potion
#
# スコアが100以上で実行する奴ら
#
# @within function asset:mob/0104.mad_scientist/tick/2.tick

# 演出
    # 毒
    execute if entity @s[tag=2W.Poison] run particle dust 0 0.4 0 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

    # 火
    execute if entity @s[tag=2W.Fire] run particle dust 0.8 0 0 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

    # 水というか氷
    execute if entity @s[tag=2W.Water] run particle dust 0.5 1 1 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

    # 雷
    execute if entity @s[tag=2W.Thunder] run particle dust 1 1 0 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

# ポーションを投げる(Projectile使用)
    execute if score @s 2W.Tick matches 120.. run function asset:mob/0104.mad_scientist/tick/5.throw_potion