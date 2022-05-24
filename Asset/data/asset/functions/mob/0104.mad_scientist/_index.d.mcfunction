#> asset:mob/0104.mad_scientist/_index.d
# @private

#> マッドサイエンティスト単体の定義
# @within function
#   asset:mob/0104.mad_scientist/hurt/**
#   asset:mob/0104.mad_scientist/tick/**
    #declare tag 2W.HPless50Per
    #declare score_holder $Random

#> ポーション側と共通の定義
# @within function
#   asset:mob/0104.mad_scientist/tick/**
#   asset:mob/0105.potion_projectile/summon/2.summon
#   asset:mob/0105.potion_projectile/tick/element_branch
    #declare tag 2W.Poison
    #declare tag 2W.Fire
    #declare tag 2W.Water
    #declare tag 2W.Thunder