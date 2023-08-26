#> asset:mob/0055.hetukedah/tick/skill/otete_beam/tick_hard
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# ゆっくりと狙う
    execute facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 予備動作
    execute if score @s 1J.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/windup

# 交互に放つ
    execute if score @s 1J.Tick matches 30 anchored eyes positioned ^1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s 1J.Tick matches 32 anchored eyes positioned ^-1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s 1J.Tick matches 34 anchored eyes positioned ^1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s 1J.Tick matches 36 anchored eyes positioned ^-1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s 1J.Tick matches 38 anchored eyes positioned ^1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s 1J.Tick matches 40 anchored eyes positioned ^-1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot

# 最後にデカいのを何度か撃つ
    execute if score @s 1J.Tick matches 45 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot
    execute if score @s 1J.Tick matches 55 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot
    execute if score @s 1J.Tick matches 65 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot

# リセット
    execute if score @s 1J.Tick matches 70.. run function asset:mob/0055.hetukedah/tick/reset