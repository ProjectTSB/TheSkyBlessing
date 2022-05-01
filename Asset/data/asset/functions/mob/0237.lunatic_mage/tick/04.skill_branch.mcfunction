#> asset:mob/0237.lunatic_mage/tick/04.skill_branch
#
# 各スキルの技のfunctionに分岐します
#
# @within function asset:mob/0237.lunatic_mage/tick/2.tick

# 火
    execute if entity @s[tag=6L.Fire] run function asset:mob/0237.lunatic_mage/skill/fire/01.manage

# 水
    execute if entity @s[tag=6L.Water] run function asset:mob/0237.lunatic_mage/skill/water/01.manage

# 雷
    execute if entity @s[tag=6L.Thunder] run function asset:mob/0237.lunatic_mage/skill/thunder/01.manage

# 無
    execute if entity @s[tag=6L.Magic] run function asset:mob/0237.lunatic_mage/skill/magic/01.manage

# 火2
    execute if entity @s[tag=6L.Fire2] run function asset:mob/0237.lunatic_mage/skill/fire2/01.manage

# 属性キル
    execute if entity @s[tag=6L.ElementalConfine] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/01.manage