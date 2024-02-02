#> core:_index.d
# @private

#> Global Vars
# @public
    #declare score_holder $PlayerCount
    #declare score_holder $LoadTime

# TODO 上記のGlobal VarsをPrivateにしてAPIに移行する
#> Global Vars - Private
# @within
#   function
#       core:load_once
#       api:global_vars/get_difficulty
#       world_manager:force_difficulty
#   predicate
#       api:global_vars/difficulty/**
    #declare score_holder $Difficulty

#> DeathTag
# @public
    #declare tag Death

#> GraveTag
# @within
#   player_manager:grave/**
#   core:tick/
    #declare tag Grave
    #declare tag GraveInit

#> RespawnTag
# @within function
#   core:handler/respawn*
#   asset_manager:effect/*
    #declare tag InRespawnEvent

#> DistributedIntervalGroup
# @within function **6_distributed_interval
#declare score_holder $DistributeGroup