#> oh_my_dat:sys/allocate
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function oh_my_dat:sys/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score _ OhMyDatID run data get storage oh_my_dat: id[-1]
execute store result score _ OhMyDat run data get storage oh_my_dat: id[0]
execute if score _ OhMyDatID matches 0 run scoreboard players set _ OhMyDatID 65536
scoreboard players operation _ OhMyDatID += _ OhMyDat
scoreboard players set _ OhMyDat 2
scoreboard players operation _ OhMyDatID /= _ OhMyDat

# 割り当てIDに追加
data modify storage oh_my_dat: id append value -1
execute store result storage oh_my_dat: id[-1] int 1 run scoreboard players get _ OhMyDatID
# 割り当てる
scoreboard players operation @s OhMyDatID = _ OhMyDatID
