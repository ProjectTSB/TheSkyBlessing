#> api:lost_items/get_length
#
# プレイヤーが失ったアイテムの数を取得します。
#
# @input as player
# @output result score MP
# @api

# EntityStorage呼び出し
    function oh_my_dat:please
# 取得する
    return run execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[]