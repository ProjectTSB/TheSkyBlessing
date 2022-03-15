#> asset:mob/0214.water_magic/tick/03.ready_vfx
#
#
#
# @within function asset:mob/0214.water_magic/tick/2.tick

# 演出
    playsound entity.player.swim hostile @a ~ ~ ~ 0.2 1 0
    particle scrape ^ ^0.2 ^2.25 0 0 0 3 1 normal @a
    execute rotated ~90 ~ run particle scrape ^ ^0.2 ^2.25 0 0 0 3 1 normal @a
    execute rotated ~180 ~ run particle scrape ^ ^0.2 ^2.25 0 0 0 3 1 normal @a
    execute rotated ~270 ~ run particle scrape ^ ^0.2 ^2.25 0 0 0 3 1 normal @a
    particle fishing ^ ^ ^2 ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^ ^ ^-2 ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^2 ^ ^ ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^-2 ^ ^ ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^ ^ ^2 ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^ ^ ^-2 ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^2 ^ ^ ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^-2 ^ ^ ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^ ^ ^2 ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^ ^ ^-2 ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^2 ^ ^ ~ ~1000000 ~ 0.0000005 0 normal
    particle fishing ^-2 ^ ^ ~ ~1000000 ~ 0.0000005 0 normal