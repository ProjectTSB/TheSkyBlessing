### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# 前回存在を確認したIDを移動させる
data modify storage oh_my_dat: id append from storage oh_my_dat: id[0]
data remove storage oh_my_dat: id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
execute store result score $ OhMyDat run data get storage oh_my_dat: id[0]
scoreboard players remove $ OhMyDat 2147483647
scoreboard players set $ OhMyDatID 0
scoreboard players operation * OhMyDatID -= $ OhMyDat
scoreboard players operation $ OhMyDatID > * OhMyDatID
scoreboard players operation * OhMyDatID += $ OhMyDat

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
scoreboard players operation $ OhMyDat >< $ OhMyDatID
execute store result score $ OhMyDatID run data get storage oh_my_dat: id[0]
execute if score $ OhMyDatID > $ OhMyDat run function oh_my_dat:sys/gc_loop
scoreboard players operation $ OhMyDat >< $ OhMyDatID

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
# 2prev
execute store result score $ OhMyDat run data get storage oh_my_dat: id[-1]
execute if score $ OhMyDat matches 0 run scoreboard players add $ OhMyDat 65536
execute if score $ OhMyDatID matches 0 run scoreboard players add $ OhMyDat 65536
execute if score $ OhMyDatID matches 0 run scoreboard players add $ OhMyDatID 65536
scoreboard players operation $ OhMyDat += $ OhMyDat
# 2prev - 2x
scoreboard players operation $ OhMyDat -= $ OhMyDatID
scoreboard players operation $ OhMyDat -= $ OhMyDatID
# 3x - 2prev
scoreboard players operation $ OhMyDatID -= $ OhMyDat
# 3x - 2prev - next
execute store result score $ OhMyDat run data get storage oh_my_dat: id[1]
scoreboard players operation $ OhMyDatID -= $ OhMyDat
execute if score $ OhMyDatID matches -1.. run function oh_my_dat:sys/gc
