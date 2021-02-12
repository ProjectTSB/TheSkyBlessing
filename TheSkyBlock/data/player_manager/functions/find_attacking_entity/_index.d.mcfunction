#> player_manager:find_attacking_entity/_index.d
# @private

#> InitTag
# @within function
#   core:tick
#   player_manager:find_attacking_entity/set_flag
    #declare tag AlreadyInitMob

#> 攻撃元Entity
# `@e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150]`
# @public
    #declare tag AttackedEntity

#> DetectFlag
# @within * player_manager:find_attacking_entity/**
    #declare tag DetectFlag0
    #declare tag DetectFlag1
    #declare tag DetectFlag2
    #declare tag DetectFlag3
    #declare tag DetectFlag4
    #declare tag DetectFlag5
    #declare tag DetectFlag6
    #declare tag DetectFlag7
    #declare tag DetectFlag8
    #declare tag DetectFlag9
    #declare tag DetectFlag10
    #declare tag DetectFlag11
    #declare tag DetectFlag12
    #declare tag DetectFlag13
    #declare tag DetectFlag14
    #declare tag DetectFlag15
    #declare tag HasFlag0
    #declare tag HasFlag1
    #declare tag HasFlag2
    #declare tag HasFlag3
    #declare tag HasFlag4
    #declare tag HasFlag5
    #declare tag HasFlag6
    #declare tag HasFlag7
    #declare tag HasFlag8
    #declare tag HasFlag9
    #declare tag HasFlag10
    #declare tag HasFlag11
    #declare tag HasFlag12
    #declare tag HasFlag13
    #declare tag HasFlag14
    #declare tag HasFlag15
    #declare tag this
    #declare score_holder $AttackedEntityIndex