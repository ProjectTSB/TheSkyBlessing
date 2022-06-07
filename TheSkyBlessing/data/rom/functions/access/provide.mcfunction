#> rom:access/provide
#
#
#
# @within function rom:access/

#> Val
# @private
#declare score_holder $Address

# IDを取得する
    execute store result score $Address Temporary run data get storage api: Argument.Address

### Copyright © 2020 赤石愛
### This software is released under the MIT License, see OhMyDat/LICENSE.

# リセット
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][6]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][4]
    data remove storage rom: _[-4][-4][-4][-4][-4][6]
    data remove storage rom: _[-4][-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][-4][4]
    data remove storage rom: _[-4][-4][-4][-4][6]
    data remove storage rom: _[-4][-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][-4][4]
    data remove storage rom: _[-4][-4][-4][6]
    data remove storage rom: _[-4][-4][-4][5]
    data remove storage rom: _[-4][-4][-4][4]
    data remove storage rom: _[-4][-4][6]
    data remove storage rom: _[-4][-4][5]
    data remove storage rom: _[-4][-4][4]
    data remove storage rom: _[-4][6]
    data remove storage rom: _[-4][5]
    data remove storage rom: _[-4][4]
    data remove storage rom: _[6]
    data remove storage rom: _[5]
    data remove storage rom: _[4]

# シフト1
    scoreboard players operation $Address Temporary *= $65536 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _ append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _ append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _ append from storage rom: ThreeEmptyLists[]

# チェック2
    execute unless data storage rom: _[-4][0] run data modify storage rom: _[-4] set from storage rom: initial[0]
# シフト2
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4] append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4] append from storage rom: ThreeEmptyLists[]

# チェック3
    execute unless data storage rom: _[-4][-4][0] run data modify storage rom: _[-4][-4] set from storage rom: initial[0][0]
# シフト3
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4] append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック4
    execute unless data storage rom: _[-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4] set from storage rom: initial[0][0][0]
# シフト4
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4] append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック5
    execute unless data storage rom: _[-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4] set from storage rom: initial[0][0][0][0]
# シフト5
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4] append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック6
    execute unless data storage rom: _[-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4] set from storage rom: initial[0][0][0][0][0]
# シフト6
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4] append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック7
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4][-4] set from storage rom: initial[0][0][0][0][0][0]
# シフト7
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append value []
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック8
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] set from storage rom: initial[0][0][0][0][0][0][0]
# シフト8
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: two_empty_maps[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: three_empty_maps[]

# リセット
    scoreboard players reset $Address Temporary