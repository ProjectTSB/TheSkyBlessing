#> oh_my_dat:sys/load
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### データパックが初期化されていなければ、初期化する
execute unless data storage oh_my_dat: _ run function oh_my_dat:sys/init
