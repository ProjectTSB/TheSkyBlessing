#> rom:init
#
#
#
# @private

### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

# ストレージシフトに使うデータ
    data modify storage rom: TwoEmptyLists set value [[],[]]
    data modify storage rom: ThreeEmptyLists set value [[],[],[]]
    data modify storage rom: Initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
    data modify storage rom: _ set from storage rom: Initial