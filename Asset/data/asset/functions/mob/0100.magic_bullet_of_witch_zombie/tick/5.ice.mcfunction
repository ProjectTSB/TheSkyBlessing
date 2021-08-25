#> asset:mob/0100.magic_bullet_of_witch_zombie/tick/5.ice
#
#
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/tick/2.tick

# 演出
    particle snowflake ~ ~ ~ 0.3 0.3 0.3 0 2 normal @a
    playsound block.glass.break master @a ~ ~ ~ 0.5 2 0

# プレイヤーに対するダメージとデバフ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function asset:mob/0100.magic_bullet_of_witch_zombie/tick/6.ice_damage