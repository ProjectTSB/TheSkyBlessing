### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定された値($ OhMyDatID)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# ストレージ提供
execute unless score $ OhMyDatID = $LatestProvidedID OhMyDatID run function oh_my_dat:sys/provide