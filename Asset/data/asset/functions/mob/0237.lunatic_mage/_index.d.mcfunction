#> asset:mob/0237.lunatic_mage/_index.d
# @private

#> tag
# @within function asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.Water
    #declare tag 6L.Thunder
    #declare tag 6L.Magic
    #declare tag 6L.Fire2
    #declare tag 6L.Fire
    #declare tag 6L.ElementalKill

#> tag
# @within function asset:mob/0237.lunatic_mage/skill/magic/**
    #declare tag LandingTarget

#> tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/05.reset
#   asset:mob/0237.lunatic_mage/skill/fire/02.decide_rotation
#   asset:mob/0237.lunatic_mage/skill/fire/03.shoot
    #declare tag 6L.LeftRotation

#> score_holder
# @within function asset:mob/0237.lunatic_mage/**
    #declare score_holder $Random
    #declare score_holder $Temp