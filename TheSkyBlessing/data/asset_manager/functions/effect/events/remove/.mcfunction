#> asset_manager:effect/events/remove/
#
# remove イベントを呼び出す
# 実装がなければ継承元のイベントを呼ぶ
#
# @within function
#   asset_manager:effect/finish.m
#   asset_manager:effect/events/remove/call_super_method

function #asset:effect/remove

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/remove/call_super_method

data remove storage asset:effect Implement
