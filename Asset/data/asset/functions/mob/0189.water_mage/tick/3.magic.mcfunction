#> asset:mob/0189.water_mage/tick/3.magic
#
#
#
# @within function asset:mob/0189.water_mage/tick/2.tick

# 魔法準備態勢
    execute if score @s 59.Tick matches 100 run function asset:mob/0189.water_mage/tick/4.ready_magic

# 魔方陣っぽい何か
    execute rotated ~ ~90 positioned ^ ^1 ^-1.5 run function asset:mob/0189.water_mage/tick/5.magic_square

# 水弾発射
    execute if score @s 59.Tick matches 130..170 positioned ^ ^ ^0.6 run function asset:mob/0189.water_mage/tick/6.shoot_magic

# リセット
    execute if score @s 59.Tick matches 170.. run function asset:mob/0189.water_mage/tick/9.reset