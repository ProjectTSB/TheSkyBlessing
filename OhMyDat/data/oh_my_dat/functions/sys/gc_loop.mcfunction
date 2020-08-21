### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 割り当て解放

# データを削除
function oh_my_dat:sys/provide
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# 割り当て済みIDを削除
data remove storage oh_my_dat: id[0]
# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
execute store result score _ OhMyDatID run data get storage oh_my_dat: id[0]
execute if score _ OhMyDatID > _ OhMyDat run function oh_my_dat:sys/gc_loop
