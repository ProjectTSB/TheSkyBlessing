#> asset_manager:object/tick/
#
# ObjectのTick処理
#
# @within function core:tick/

# ID取得する
    execute store result storage asset:object TickID int 1 run scoreboard players get @s ObjectID

# 取得した数値でマクロ実行
    function asset_manager:object/tick/tick.m with storage asset:object

# リセット
    data remove storage asset:object TickID
