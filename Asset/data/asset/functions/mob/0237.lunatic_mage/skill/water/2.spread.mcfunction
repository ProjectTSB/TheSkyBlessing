#> asset:mob/0237.lunatic_mage/skill/water/2.spread
#
# 追加で水をプレイヤーの周囲に2つ置く
#
# @within function asset:mob/0237.lunatic_mage/skill/water/1

# 目の前に召喚
    execute positioned ^ ^ ^4.5 run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute positioned ^ ^ ^-4.5 run function asset:mob/0237.lunatic_mage/magic_summon/water