#> asset:mob/0104.mad_scientist/_index.d
# @private
#
#> Tagとscore_holder
# @within function asset:mob/0104.mad_scientist/**
    #declare score_holder $Random
    #declare tag 2W.Poison
    #declare tag 2W.Fire
    #declare tag 2W.Water
    #declare tag 2W.Thunder

#> ポーション側と共通のTag
# @within function
#   asset:mob/0104.mad_scientist/tick/**
#   asset:mob/0105.potion_projectile/summon/2.summon
#   asset:mob/0105.potion_projectile/tick/**
    #declare tag 2W.Poison
    #declare tag 2W.Fire
    #declare tag 2W.Water
    #declare tag 2W.Thunder