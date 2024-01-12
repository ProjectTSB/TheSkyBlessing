#> core:_index.d
# @private

#> Global Vars
# @public
    #declare score_holder $PlayerCount
    #declare score_holder $LoadTime

# TODO 上記のGlobal VarsをPrivateにしてAPIに移行する
#> Global Vars - Private
# @within *
#   core:load_once
#   api:global_vars/difficulty/**
    #declare score_holder $Difficulty

#> DeathTag
# @public
    #declare tag Death

#> RespawnTag
# @public
    #declare tag InRespawnEvent

#> DistributedIntervalGroup
# @within function **6_distributed_interval
#declare score_holder $DistributeGroup