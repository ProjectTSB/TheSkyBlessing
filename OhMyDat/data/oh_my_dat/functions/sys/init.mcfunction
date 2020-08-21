### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### このデータパックに必要なものを初期化する

# ストレージシフトに使うデータ
data modify storage oh_my_dat: two_empty_lists set value [[],[]]
data modify storage oh_my_dat: three_empty_lists set value [[],[],[]]
data modify storage oh_my_dat: two_empty_maps set value [{},{}]
data modify storage oh_my_dat: three_empty_maps set value [{},{},{}]
data modify storage oh_my_dat: initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
data modify storage oh_my_dat: _ set from storage oh_my_dat: initial
# 割り当て済みID保存ストレージ
data modify storage oh_my_dat: id set value [0]
# IDを振るためのスコアボード
scoreboard objectives add OhMyDatID dummy
# 計算に使うスコアボード
scoreboard objectives add OhMyDat dummy
