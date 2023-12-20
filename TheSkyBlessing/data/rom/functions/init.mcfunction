#> rom:init
#
# このデータパックに必要なものを初期化する
#
#
# @license Copyright © 2020 赤石愛, This software is released under the MIT License, see OhMyDat/LICENSE.
# @within function core:load_once

# ストレージシフトに使うデータ
    data modify storage rom: OneEmptyLists set value [[]]
    data modify storage rom: TwoEmptyLists set value [[],[]]
    data modify storage rom: ThreeEmptyLists set value [[],[],[]]
    data modify storage rom: OneEmptyMaps set value [{}]
    data modify storage rom: TwoEmptyMaps set value [{},{}]
    data modify storage rom: ThreeEmptyMaps set value [{},{},{}]
    data modify storage rom: Initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
    data modify storage rom: _ set from storage rom: Initial