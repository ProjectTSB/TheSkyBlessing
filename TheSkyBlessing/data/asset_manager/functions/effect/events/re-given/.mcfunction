#> asset_manager:effect/events/re-given/
#
# re-given イベントを現在の context.id に対して呼び出す。
# 対応する実装がなければ継承元を探索する。Implement は実装の有無を表し、処理の成否は表さない。
#
# @within function
#   asset_manager:effect/process.m
#   asset_manager:effect/events/re-given/call_super_method

function #asset:effect/re-given

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/re-given/call_super_method

data remove storage asset:effect Implement
