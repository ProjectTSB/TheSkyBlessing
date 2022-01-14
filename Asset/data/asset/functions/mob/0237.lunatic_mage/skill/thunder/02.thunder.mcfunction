#> asset:mob/0237.lunatic_mage/skill/thunder/02.thunder
#
# 雷落とす
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/01.manage

# 召喚
    function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ^-5 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ^5 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/thunder