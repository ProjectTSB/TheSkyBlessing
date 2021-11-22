#> asset:mob/0189.water_mage/tick/7.vfx
#
#
#
# @within function asset:mob/0189.water_mage/tick/6.shoot_magic

# 演出
    particle splash ~ ~ ~ 0.4 0.4 0.4 0 200 normal @a
    playsound entity.player.splash.high_speed master @a ~ ~ ~ 0.6 1.5

# ダメージ
    execute positioned ^ ^-0.75 ^ if entity @a[gamemode=!creative,gamemode=!spectator,distance=..0.75] run function asset:mob/0189.water_mage/tick/8.damage