#> oh_its_dat:please
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定された値(_ OhMyDatID)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを一時変数にコピー
execute store result storage oh_my_dat: target_id int 1 run scoreboard players get _ OhMyDatID
# 取得するIDに変化があるかどうか確認
execute store result storage oh_my_dat: update byte 1 run data modify storage oh_my_dat: last_id set from storage oh_my_dat: target_id
# ストレージ提供
execute if data storage oh_my_dat: {update:true} run function oh_my_dat:sys/provide
