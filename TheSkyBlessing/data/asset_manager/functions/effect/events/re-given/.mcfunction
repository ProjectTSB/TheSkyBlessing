#> asset_manager:effect/events/re-given/
#
# re-given イベントを呼び出す。
# 実装がなければ継承元のイベントを呼ぶ。
#
# @within function
#   asset_manager:effect/process.m
#   asset_manager:effect/events/re-given/call_super_method

function #asset:effect/re-given

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/re-given/call_super_method

data remove storage asset:effect Implement
