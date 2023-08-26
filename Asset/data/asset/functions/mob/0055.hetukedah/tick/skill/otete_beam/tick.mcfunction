#> asset:mob/0055.hetukedah/tick/skill/otete_beam/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# ゆっくりと狙う
    execute facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1200 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 予備動作
    execute if score @s 1J.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/windup

# 交互に放つ(ノーマル)
    execute unless predicate api:global_vars/difficulty/min/hard if score @s 1J.Tick matches 30 anchored eyes positioned ^1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute unless predicate api:global_vars/difficulty/min/hard if score @s 1J.Tick matches 35 anchored eyes positioned ^-1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot

# 交互に放つ(ハード)
    execute if predicate api:global_vars/difficulty/min/hard if score @s 1J.Tick matches 30 anchored eyes positioned ^1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot
    execute if predicate api:global_vars/difficulty/min/hard if score @s 1J.Tick matches 35 anchored eyes positioned ^-1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot

# 最後にデカいのを撃つ
    execute if score @s 1J.Tick matches 40 anchored eyes positioned ^ ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot

# リセット
    execute if score @s 1J.Tick matches 60.. run function asset:mob/0055.hetukedah/tick/reset