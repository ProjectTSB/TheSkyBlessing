#> asset_manager:trader/common/trades_map/create_hidden_item.m
# @input args
#   RequiredProgressToDisplay: int
# @within function asset_manager:trader/common/trades_map/

$data modify storage asset:trader HiddenItem set value {id:"minecraft:barrier",Count:1b,tag:{display:{Name:'[{"text":"表示には攻略度が","color":"white","italic":false},{"text":" $(RequiredProgressToDisplay)% ","color":"gold","italic":false},{"text":"必要です。","color":"white","italic":false}]'}}}
