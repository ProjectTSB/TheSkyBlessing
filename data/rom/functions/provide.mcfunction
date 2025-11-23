#> rom:provide
#
#
#
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function api:rom/please

#> Val
# @private
    #declare score_holder $Address

# 提供したアドレスを保存しておく
    scoreboard players operation $LatestProvidedAddress Global = $Address Temporary

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

# 上位2bit =
#   00?? ???? ???? ???? ???? ???? ???? ???? ->                  0 <= n < 2^30
#   01?? ???? ???? ???? ???? ???? ???? ???? ->                           2^30 <= n
#   10?? ???? ???? ???? ???? ???? ???? ???? -> n < -2^30
#   11?? ???? ???? ???? ???? ???? ???? ???? ->     -2^30 <= n < 0
# 2^30 = 1,073,741,824

# シフト1
    scoreboard players operation $Address Temporary *= $65536 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _ append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _ append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _ append from storage rom: ThreeEmptyLists[]

# チェック2
    execute unless data storage rom: _[-4][0] run data modify storage rom: _[-4] set from storage rom: Initial[0]
# シフト2
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4] append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4] append from storage rom: ThreeEmptyLists[]

# チェック3
    execute unless data storage rom: _[-4][-4][0] run data modify storage rom: _[-4][-4] set from storage rom: Initial[0][0]
# シフト3
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4] append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック4
    execute unless data storage rom: _[-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4] set from storage rom: Initial[0][0][0]
# シフト4
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4] append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック5
    execute unless data storage rom: _[-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0]
# シフト5
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック6
    execute unless data storage rom: _[-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0][0]
# シフト6
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック7
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0][0][0]
# シフト7
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# チェック8
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0][0][0][0]
# シフト8
    scoreboard players operation $Address Temporary *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: OneEmptyMaps[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: TwoEmptyMaps[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyMaps[]
