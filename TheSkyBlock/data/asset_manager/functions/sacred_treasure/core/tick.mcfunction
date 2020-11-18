#> asset_manager:sacred_treasure/core/tick
#
# 毎tickする神器処理を実行します
#
# @within function core:tick

# 消費アイテムを持っているtick数を記録
    execute if predicate lib:has_consumable run scoreboard players add @s TimeHasEdible 1
# 乾燥昆布持ってたら12tick以上でNBT保存
    execute if predicate lib:has_dried_kelp run function asset_manager:sacred_treasure/core/set_previous_id
# それ以外なら28tick以上でNBT保存
    execute unless predicate lib:has_dried_kelp run function asset_manager:sacred_treasure/core/set_previous_id
# そもそも持ってなかったらリセット
    execute unless predicate lib:has_consumable run function asset_manager:sacred_treasure/core/reset_previous_id
    execute unless predicate lib:has_consumable run scoreboard players reset @s TimeHasEdible