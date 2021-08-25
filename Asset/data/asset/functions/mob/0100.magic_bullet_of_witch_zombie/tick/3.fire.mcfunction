#> asset:mob/0100.magic_bullet_of_witch_zombie/tick/3.fire
#
#
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/tick/2.tick

# 演出
    particle flame ~ ~ ~ 0.3 0.3 0.3 0 2 normal @a
    playsound entity.blaze.shoot master @a ~ ~ ~ 0.5 1 0

# プレイヤーに対するダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function asset:mob/0100.magic_bullet_of_witch_zombie/tick/4.fire_damage