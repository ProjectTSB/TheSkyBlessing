#> asset_manager:object/triggers/tick
#
# Tickトリガー処理
#
# @within function core:tick/

# thisタグ
    tag @s add this

# EntityStorage呼び出し
    function oh_my_dat:please

# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s ObjectID
    execute store result storage asset:context originID int 1 run scoreboard players get @s ObjectID
    data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField

# Tick処理を実行
    function asset_manager:object/tick/

# EntityStorage呼び出し(Asset側処理内でポインタが変わっている可能性があるので)
    function oh_my_dat:please

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField set from storage asset:context this

# リセット
    data remove storage asset:context id
    data remove storage asset:context originID
    data remove storage asset:context this
    tag @s remove this
