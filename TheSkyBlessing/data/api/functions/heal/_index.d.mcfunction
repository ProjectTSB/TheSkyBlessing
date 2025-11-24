#> api:heal/_index.d
# @private

#> Private
# @within function api:heal/core/**
    #declare score_holder $LatestModifiedUser
    #declare score_holder $ModifierIndex

#> 超過回復量
# @within function api:heal/core/push_heal_events/*
    #declare score_holder $OverHeal
    #declare score_holder $MaxHealth
    #declare score_holder $CurrentHealth
    #declare score_holder $HealthPer
