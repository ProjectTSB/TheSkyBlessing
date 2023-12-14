#> lib:random/with_biased/manual.m
#
# バイアス付きの乱数を返します。
#
# @input args
#   key: string
#       同じバイアスを利用するキー
#   max: int
#       生成結果の範囲
#   scarcity_history_size: int
#       過去何回の生成結果を出にくくするか
# @api

#> Private
# @private
#declare score_holder $size

#> Private
# @within function lib:random/with_biased/*
#declare score_holder $max

$data modify storage lib: RecentHits set from storage lib: RecentHitsData.$(key)
$scoreboard players set $max Temporary $(max)

function lib:random/with_biased/rec

data modify storage lib: RecentHits append from storage lib: Random.value
execute store result score $size Temporary if data storage lib: RecentHits[]
$execute if score $size Temporary matches $(scarcity_history_size).. run data remove storage lib: RecentHits[0]
$data modify storage lib: RecentHitsData.$(key) set from storage lib: RecentHits

scoreboard players reset $max Temporary
data remove storage lib: Random
data remove storage lib: RecentHits

$data get storage lib: RecentHitsData.$(key)[-1]
