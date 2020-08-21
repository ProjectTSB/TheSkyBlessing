### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたエンティティ(@s)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを持っていなければ、IDを割り当て
execute unless score @s OhMyDatID matches 1.. run function oh_my_dat:sys/allocate
# IDを一時変数にコピー
scoreboard players operation _ OhMyDatID = @s OhMyDatID
# ストレージ提供
function oh_my_dat:sys/provide
