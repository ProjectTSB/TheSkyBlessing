#> asset:mob/0237.lunatic_mage/_index.d
# @private

#> 技
# @within function asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.Fire
    #declare tag 6L.Fire2
    #declare tag 6L.Water
    #declare tag 6L.Thunder
    #declare tag 6L.Magic
    #declare tag 6L.ElementalConfine

#> 再帰のヒットの処理用Tag
# @within function
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/**
#   asset:mob/0237.lunatic_mage/skill/magic/**
    #declare tag LandingTarget

#> 体力40%以下のTag
# @within function
#   asset:mob/0237.lunatic_mage/hurt/**
#   asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.HealthLess40Per

#> 炎1の回転の向き
# @within function
#   asset:mob/0237.lunatic_mage/skill/fire/**
#   asset:mob/0237.lunatic_mage/tick/5.reset
    #declare tag 6L.LeftRotation

#> 召喚地点の位置用Marker
# @within function
#   asset:mob/0237.lunatic_mage/death/2.death
#   asset:mob/0237.lunatic_mage/remove/2.remove
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/**
#   asset:mob/0237.lunatic_mage/skill/teleport/main
#   asset:mob/0237.lunatic_mage/summon/2.summon
    #declare tag 6L.SpawnPoint

#> score_holder
# @within function asset:mob/0237.lunatic_mage/**
    #declare score_holder $Random
    #declare score_holder $Interval