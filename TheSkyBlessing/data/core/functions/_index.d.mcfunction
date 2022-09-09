#> core:_index.d
# @private

#> Global Vars
# @public
    #declare score_holder $PlayerCount
    #declare score_holder $LoadTime

# TODO 上記のGlobal VarsをPrivateにしてAPIに移行する
#> Global Vars - Private
# @within function
#   core:load_once
#   api:**
    #declare score_holder $Difficulty

#> DeathTag
# @public
    #declare tag Death

#> DistributedIntervalGroup
# @within function **6_distributed_interval
#declare score_holder $DistributeGroup