#> asset:mob/0237.lunatic_mage/_index.d
# @private

#> tag
# @within function asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.Water
    #declare tag 6L.Thunder
    #declare tag 6L.Magic
    #declare tag 6L.Fire2

#> tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/**
#   asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage
    #declare tag 6L.Fire

#> tag
# @within function asset:mob/0237.lunatic_mage/skill/magic/**
    #declare tag LandingTarget

#> tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/05.reset
#   asset:mob/0237.lunatic_mage/skill/fire/02.decide_rotation
#   asset:mob/0237.lunatic_mage/skill/fire/03.shoot
    #declare tag 6L.LeftRotation

#> tag
# @within function
#   asset:mob/0237.lunatic_mage/hurt/2.hurt
#   asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.ElementalKill


#> Tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/03.select_skill
#   asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage
    #declare tag 6L.AlreadyElement