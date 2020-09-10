#> lib:get_name
#
# 実行者の名前を`lib: Return.Name`に返します
#
# @api

loot replace block 10000 0 10000 container.0 loot lib:get_name
data modify storage lib: Return.Name set from block 10000 0 10000 Items[0].tag.SkullOwner.Name