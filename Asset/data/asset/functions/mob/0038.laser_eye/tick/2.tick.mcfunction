#> asset:mob/0038.laser_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0038.laser_eye/tick/1.trigger

# プレイヤーが遠くにいる場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=7..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.21 ~ ~

# プレイヤーが近すぎる場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=..6] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-250 facing entity @s eyes positioned as @s run tp @s ^ ^ ^-0.21 ~ ~

# 適正距離の場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=3..9] run function asset:mob/0038.laser_eye/tick/2.1.attack

# タグ付与されてる場合
    execute if entity @s[tag=C.Charge] run function asset:mob/0038.laser_eye/tick/2.1.attack