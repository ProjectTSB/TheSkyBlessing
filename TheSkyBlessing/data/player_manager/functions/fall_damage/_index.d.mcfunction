#> player_manager:fall_damage/_index.d
# @private

#> Storage
# @within function player_manager:fall_damage/**
#declare storage player_manager:fall_damage

#> Val
# @within function player_manager:fall_damage/**
#declare tag Falling

#> 落下ダメージ無効タグ
# @public
#declare tag FallDamageImmunity

#> For Calc
# @within function player_manager:fall_damage/deal_damage/**
    #declare score_holder $MaxHealth (e2)
    #declare score_holder $FallDistance (e1)
    #declare score_holder $JumpBoost (e1)
    #declare score_holder $DamageMultiplier (e1)
    #declare score_holder $Damage (e4)
