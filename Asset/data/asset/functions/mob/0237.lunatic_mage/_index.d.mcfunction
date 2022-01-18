#> asset:mob/0237.lunatic_mage/_index.d
# @private

#> tag
# @within function asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6J.Fire
    #declare tag 6J.Water
    #declare tag 6J.Thunder
    #declare tag 6J.Magic
    #declare tag 6J.Fire2

#> tag
# @within function asset:mob/0237.lunatic_mage/skill/magic/**
    #declare tag LandingTarget

#> tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/05.reset
#   asset:mob/0237.lunatic_mage/skill/fire/03.shoot
    #declare tag 6J.LeftRotation

#> tag
# @within function
#   asset:mob/0237.lunatic_mage/hurt/2.hurt
#   asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6J.ElementalKill


#> Tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/03.select_skill
#   asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage
    #declare tag 6J.AlreadyElement