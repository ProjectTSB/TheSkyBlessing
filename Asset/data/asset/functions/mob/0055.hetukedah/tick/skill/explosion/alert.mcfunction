#> asset:mob/0055.hetukedah/tick/skill/explosion/alert
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# パーティクル
    function asset:mob/0055.hetukedah/tick/skill/explosion/alert_shape

# サウンド
    playsound minecraft:block.note_block.harp hostile @a ~ ~ ~ 2 1.5

# NoAIにする
    data merge entity @s {NoAI:1b}