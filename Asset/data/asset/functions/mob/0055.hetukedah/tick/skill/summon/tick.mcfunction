#> asset:mob/0055.hetukedah/tick/skill/summon/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active


# 予備動作
    execute if score @s 1J.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/summon/windup

# 交互に放つ
    execute if score @s 1J.Tick matches 20 positioned ~ ~-2 ~ anchored eyes positioned ^1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/summon/call
    execute if score @s 1J.Tick matches 40 positioned ~ ~-2 ~ anchored eyes positioned ^-1 ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/summon/call

# リセット
    execute if score @s 1J.Tick matches 60.. run function asset:mob/0055.hetukedah/tick/reset