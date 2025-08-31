#> debug:catalog_container/artifact/core/fill_id
#
# 再帰で神器IDを全探索してアイテムを挿入します
#
# @within function debug:catalog_container/artifact/core/fill_*


# 取得する神器IDを設定
    execute store result storage api: Argument.ID int 1 run scoreboard players get $Counter Temporary
# IDから神器を取得
# 実行者を設定しないとバグるので注意(1敗)
    execute as 0-0-0-0-0 run function api:artifact/box/from_id
# 挿入
    loot insert ~ ~ ~ mine 10000 0 10000 debug_stick
# 加算
    scoreboard players add $Counter Temporary 1
# 空スロットがあり5000以下なら再帰
    execute if function lib:has_empty_slot/block if score $Counter Temporary < $5000 Const run function debug:catalog_container/artifact/core/fill_id
