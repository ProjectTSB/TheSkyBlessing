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
# 死んでいたら呼び出さないようにする
    execute if score @s ObjectID matches -2147483648..2147483647 run function oh_my_dat:please

# フィールドを元に戻す
    execute if score @s ObjectID matches -2147483648..2147483647 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField set from storage asset:context this

# リセット
    data remove storage asset:context id
    data remove storage asset:context originID
    data remove storage asset:context this
    tag @s remove this

# 死んでいたらスコアを完全に削除する
    execute unless score @s ObjectID matches -2147483648..2147483647 run scoreboard players reset @s
