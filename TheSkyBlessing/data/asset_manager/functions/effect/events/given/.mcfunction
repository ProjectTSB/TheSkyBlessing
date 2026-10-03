#> asset_manager:effect/events/given/
#
# given イベントを現在の context.id に対して呼び出す。
# 対応する実装がなければ継承元を探索する。Implement は実装有無で、処理の成否ではない。
#
# @within function
#   asset_manager:effect/process.m
#   asset_manager:effect/events/given/call_super_method

function #asset:effect/given

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/given/call_super_method

data remove storage asset:effect Implement
