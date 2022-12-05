#> asset:mob/0214.water_magic/tick/3.ready_vfx
#
#
#
# @within function asset:mob/0214.water_magic/tick/2.tick

# 自分を回転
    tp @s ~ ~ ~ ~7.5 0

# 演出
    playsound entity.player.swim hostile @a ~ ~ ~ 0.2 1 0
    particle fishing ^ ^ ^2 ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^ ^ ^-2 ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^2 ^ ^ ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^-2 ^ ^ ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^ ^ ^2 ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^ ^ ^-2 ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^2 ^ ^ ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^-2 ^ ^ ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^ ^ ^2 ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^ ^ ^-2 ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^2 ^ ^ ~ ~1000000 ~ 0.00000025 0 normal
    particle fishing ^-2 ^ ^ ~ ~1000000 ~ 0.00000025 0 normal