#> api:damage/_index.d
# @private

#> 変数定義
# @within function api:damage/core/**
    #declare score_holder $Damage
    #declare score_holder $EPF
    #declare score_holder $Health
    #declare score_holder $defensePoints
    #declare score_holder $toughness
    #declare score_holder $Resistance
    #declare score_holder $LatestModifiedUser
    #declare score_holder $LatestModifiedEntity

#> タグ定義
# @within
#   function
#       api:damage/core/health_subtract/non-player
#       player_manager:vanilla_attack
#   advancement
#       asset_manager:artifact/**
    #declare tag AttackedByApi
    #declare tag AttackedByProjectile

#> Declare
# @within function api:damage/core/trigger_on_damage/**
    #declare tag TargetAttacker
