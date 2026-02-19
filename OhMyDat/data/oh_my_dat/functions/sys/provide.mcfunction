### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

# 最後に呼び出したIDを記録する
scoreboard players operation $LatestProvidedID OhMyDatID = $ OhMyDatID

### 指定されたエンティティのデータを、特定のオフセットで呼び出せるようにする

# シフト  (reset->1->     2->     3->     4->     5->     6->     7->     8)
# チェック(           2->     3->     4->     5->     6->     7->     8->  )

# reset
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][6]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][5]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][4]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][6]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][5]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][4]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][6]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][5]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][4]
data remove storage oh_my_dat: _[-4][-4][-4][-4][6]
data remove storage oh_my_dat: _[-4][-4][-4][-4][5]
data remove storage oh_my_dat: _[-4][-4][-4][-4][4]
data remove storage oh_my_dat: _[-4][-4][-4][6]
data remove storage oh_my_dat: _[-4][-4][-4][5]
data remove storage oh_my_dat: _[-4][-4][-4][4]
data remove storage oh_my_dat: _[-4][-4][6]
data remove storage oh_my_dat: _[-4][-4][5]
data remove storage oh_my_dat: _[-4][-4][4]
data remove storage oh_my_dat: _[-4][6]
data remove storage oh_my_dat: _[-4][5]
data remove storage oh_my_dat: _[-4][4]
data remove storage oh_my_dat: _[6]
data remove storage oh_my_dat: _[5]
data remove storage oh_my_dat: _[4]

# シフト１
scoreboard players operation $ OhMyDatID *= $65536 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _ append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _ append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _ append from storage oh_my_dat: three_empty_lists[]

# チェック2
execute unless data storage oh_my_dat: _[-4][0] run data modify storage oh_my_dat: _[-4] set from storage oh_my_dat: initial[0]
# シフト2
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4] append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4] append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4] append from storage oh_my_dat: three_empty_lists[]

# チェック3
execute unless data storage oh_my_dat: _[-4][-4][0] run data modify storage oh_my_dat: _[-4][-4] set from storage oh_my_dat: initial[0][0]
# シフト3
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4][-4] append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4][-4] append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4][-4] append from storage oh_my_dat: three_empty_lists[]

# チェック4
execute unless data storage oh_my_dat: _[-4][-4][-4][0] run data modify storage oh_my_dat: _[-4][-4][-4] set from storage oh_my_dat: initial[0][0][0]
# シフト4
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4][-4][-4] append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4][-4][-4] append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4][-4][-4] append from storage oh_my_dat: three_empty_lists[]

# チェック5
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][0] run data modify storage oh_my_dat: _[-4][-4][-4][-4] set from storage oh_my_dat: initial[0][0][0][0]
# シフト5
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4][-4][-4][-4] append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4][-4][-4][-4] append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4][-4][-4][-4] append from storage oh_my_dat: three_empty_lists[]

# チェック6
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4] set from storage oh_my_dat: initial[0][0][0][0][0]
# シフト6
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4] append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4] append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4] append from storage oh_my_dat: three_empty_lists[]

# チェック7
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4] set from storage oh_my_dat: initial[0][0][0][0][0][0]
# シフト7
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4] append value []
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4] append from storage oh_my_dat: two_empty_lists[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4] append from storage oh_my_dat: three_empty_lists[]

# チェック8
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4] set from storage oh_my_dat: initial[0][0][0][0][0][0][0]
# シフト8
scoreboard players operation $ OhMyDatID *= $4 Const
# 上位2bitを元にオフセット要素を末尾追加する
execute if score $ OhMyDatID matches 1073741824.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4] append value {}
execute if score $ OhMyDatID matches ..-1073741825 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4] append from storage oh_my_dat: two_empty_maps[]
execute if score $ OhMyDatID matches -1073741824..-1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4] append from storage oh_my_dat: three_empty_maps[]
