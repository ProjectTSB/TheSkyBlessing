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
    #declare score_holder $ModifierIndex

#> タグ定義
# @within
#   function
#       api:damage/core/health_subtract/non-player/*
#       asset_manager:artifact/triggers/attack/vanilla
#       mob_manager:entity_finder/player_hurt_entity/on_attack
    #declare tag AttackedByApi
    #declare tag AttackedByProjectile
