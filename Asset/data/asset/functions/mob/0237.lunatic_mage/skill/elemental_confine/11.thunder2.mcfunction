#> asset:mob/0237.lunatic_mage/skill/elemental_confine/11.thunder2
#
# 雷を4箇所に落とす処理
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/10.thunder

# 4つ落とす
    execute positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute rotated ~90 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute rotated ~180 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute rotated ~270 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder