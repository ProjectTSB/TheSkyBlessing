#> asset_manager:trader/common/trades_map/create_deprecated_item.m
# @input args
#   RequiredProgress: int
# @within function asset_manager:trader/common/trades_map/

$data modify storage asset:trader DeprecatedItem set value {id:"minecraft:barrier",Count:1b,tag:{display:{Name:[{"text":"購入には攻略度が","color":"white","italic":false},{"text":" $(RequiredProgress)% ","color":"gold","italic":false},{"text":"必要です。","color":"white","italic":false}]}}}
