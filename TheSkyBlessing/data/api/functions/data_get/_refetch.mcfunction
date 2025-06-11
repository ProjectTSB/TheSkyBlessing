#> api:data_get/_refetch
#
# Pos 以外を更新する
#
# @within function api:data_get/_restore_or_fetch

data modify storage api: PosStash set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Pos

data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data set from entity @s
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Pos set from storage api: PosStash

data remove storage api: PosStash
