#> rom:provide/from/5
#
# 5 層目から深い層のオフセット要素を、前回のアドレスの分から今回のアドレスの分へ付け替える
#
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function rom:provide

# 前回のアドレスのオフセット要素を、深い層から 5 層目まで外す
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][5]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][-4][4] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][4]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][5]
    execute if data storage rom: _[-4][-4][-4][-4][-4][-4][4] run data remove storage rom: _[-4][-4][-4][-4][-4][-4][4]
    execute if data storage rom: _[-4][-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][-4][5]
    execute if data storage rom: _[-4][-4][-4][-4][-4][4] run data remove storage rom: _[-4][-4][-4][-4][-4][4]
    execute if data storage rom: _[-4][-4][-4][-4][6] run data remove storage rom: _[-4][-4][-4][-4][6]
    execute if data storage rom: _[-4][-4][-4][-4][5] run data remove storage rom: _[-4][-4][-4][-4][5]
    execute if data storage rom: _[-4][-4][-4][-4][4] run data remove storage rom: _[-4][-4][-4][-4][4]

# 今回のアドレスのオフセット要素を、5 層目から深い層へ付ける
# 初めて使う枝の空のリストには insert 4 が失敗し、オフセット要素は付かない
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4] insert 4 from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyLists[]
    scoreboard players operation $Address Temporary *= $4 Const
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4] insert 4 from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyLists[]
    scoreboard players operation $Address Temporary *= $4 Const
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4] insert 4 from storage rom: OneEmptyLists[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyLists[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyLists[]
    scoreboard players operation $Address Temporary *= $4 Const
    execute if score $Address Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: OneEmptyMaps[]
    execute if score $Address Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: TwoEmptyMaps[]
    execute if score $Address Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] insert 4 from storage rom: ThreeEmptyMaps[]

# 途中に初めて使う枝があって窓が無ければ、初期化しながら全部の層を付け直す
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4] run function rom:provide/full
