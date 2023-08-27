#> asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/5.2.particle_spear_move
#
# アニメーションのイベントハンドラ 杖モード・杖殴り なぎ払い演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmACwBsAzAIb0CsKTAtAEa3UDsblADgCMfYT1qceATgEoADFKmUATFPpgCAO3oBbBMkBhigAIhGsDHoZdAZyTgUAe0KaISZXIIo4LuBjtgAN3psQn1wAA8kDzAoKIBfOIIrUjRCW0QhADplAmsIS1dEaLhsbDQYa30hOWiMB3yIfWi0awBRUvLK1oBHQmDsKABlCy9yRAAzYMqEgF0gA_3
particle electric_spark ^0 ^-1.2 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0.37082 ^-1.14127 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0.70534 ^-0.97082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0.97082 ^-0.70534 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^1.14127 ^-0.37082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^1.2 ^0 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^1.14127 ^0.37082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0.97082 ^0.70534 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0.70534 ^0.97082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0.37082 ^1.14127 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^0 ^1.2 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-0.37082 ^1.14127 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-0.70534 ^0.97082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-0.97082 ^0.70534 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-1.14127 ^0.37082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-1.2 ^0 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-1.14127 ^-0.37082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-0.97082 ^-0.70534 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-0.70534 ^-0.97082 ^ 0 0 0 0.1 1 normal @a
particle electric_spark ^-0.37082 ^-1.14127 ^ 0 0 0 0.1 1 normal @a

# 残像召喚
    execute if score @s 8T.AnimationTimer matches 89 run data modify storage api: Argument.ID set value 323
    execute if score @s 8T.AnimationTimer matches 89 run execute at @s run function api:mob/summon

# 残像のポーズ設定
    execute if score @s 8T.AnimationTimer matches 89 at @s as @e[type=marker,tag=8Z.MarkerRoot,sort=nearest,limit=1] run tag @s add 8Z.Spear

