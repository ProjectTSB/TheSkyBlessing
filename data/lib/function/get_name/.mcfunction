#> lib:get_name/
#
# 実行者の名前を取得します
#
# @input as player
# @output
#   storage lib: Return.Name: String
#   プレイヤー名
# @api

loot replace block 10000 0 10000 container.0 loot lib:get_name
data modify storage lib: Return.Name set from block 10000 0 10000 Items[0].tag.SkullOwner.Name