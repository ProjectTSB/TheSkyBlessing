#> asset:mob/0055.hetukedah/tick/skill/explosion/alert
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# パーティクル
    function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape

# ハード用警告
    execute if predicate api:global_vars/difficulty/min/hard rotated ~0 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~45 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-45 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~90 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-90 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~135 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-135 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~180 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape_mini

# サウンド
    playsound minecraft:block.note_block.harp hostile @a ~ ~ ~ 2 1.5

# NoAIにする
    data merge entity @s {NoAI:1b}