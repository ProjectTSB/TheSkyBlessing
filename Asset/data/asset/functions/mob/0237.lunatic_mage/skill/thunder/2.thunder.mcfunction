#> asset:mob/0237.lunatic_mage/skill/thunder/2.thunder
#
# 雷を3箇所に落とす処理
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/1

# 召喚
    function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ^-5 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ^5 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/thunder