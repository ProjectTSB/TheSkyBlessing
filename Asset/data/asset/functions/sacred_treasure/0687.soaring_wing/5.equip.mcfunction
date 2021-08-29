#> asset:sacred_treasure/0687.soaring_wing/5.equip
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/4.equip_trigger

# 演出
    particle cloud ~ ~1.3 ~ 0.4 0.25 0.4 0.05 10 normal @a
    playsound entity.wither.shoot master @a ~ ~ ~ 0.5 2

# フルセット
    execute if data storage asset:context id.all{head:686,chest:687,legs:688,feet:689} run function asset:sacred_treasure/0687.soaring_wing/6.fullset