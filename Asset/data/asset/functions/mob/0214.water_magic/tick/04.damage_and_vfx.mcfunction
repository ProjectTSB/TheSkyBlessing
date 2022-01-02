#> asset:mob/0214.water_magic/tick/04.damage_and_vfx
#
#
#
# @within function asset:mob/0214.water_magic/tick/2.tick

# プレイヤーが近くにいればダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function asset:mob/0214.water_magic/tick/05.damage

# vfx
    execute positioned ~ ~0.3 ~ run function asset:mob/0214.water_magic/tick/06.vfx