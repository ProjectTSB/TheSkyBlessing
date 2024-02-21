#> lib:random/with_biased/is_scarcity_history_included.m
# @input args
#   value: int
#       生成された値
# @within function lib:random/with_biased/rec

$return run execute if data storage lib: {RecentHits:[$(value)]}
