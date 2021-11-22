#> asset:mob/0187.flame_mage/event/shoot_magic
#
#
#
# @within function asset:mob/0187.flame_mage/tick/2.tick

# 撃つ
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1

# リセット
    scoreboard players reset @s 0187.Attack