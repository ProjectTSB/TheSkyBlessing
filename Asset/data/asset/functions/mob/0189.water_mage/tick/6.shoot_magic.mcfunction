#> asset:mob/0189.water_mage/tick/6.shoot_magic
#
#
#
# @within function asset:mob/0189.water_mage/tick/3.magic

# ちょっとずつ進む弾っぽいやつ
    execute if score @s 59.Tick matches 130 positioned ^ ^ ^1 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 135 positioned ^ ^ ^2.5 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 140 positioned ^ ^ ^4 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 145 positioned ^ ^ ^5.5 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 150 positioned ^ ^ ^7 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 155 positioned ^ ^ ^8.5 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 160 positioned ^ ^ ^10 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 165 positioned ^ ^ ^11.5 run function asset:mob/0189.water_mage/tick/7.vfx
    execute if score @s 59.Tick matches 170 positioned ^ ^ ^13 run function asset:mob/0189.water_mage/tick/7.vfx