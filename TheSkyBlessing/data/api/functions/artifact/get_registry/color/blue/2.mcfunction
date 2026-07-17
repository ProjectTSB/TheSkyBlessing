#> api:artifact/get_registry/color/blue/2
#
# ブルーシャード産のLv2神器の配列を返します
#
# @output storage api: Return.Registry.Blue.Lv2 : int[][]
# 神器のIDの2次元配列 1次元目は要素数n、2次元目は要素数が1以上で、神器IDを格納
#
# @api

# ブルーシャードのLv2プールを返す
    data modify storage api: Return.Registry.Blue.Lv2 set from storage asset:artifact RarityRegistryWithColor.Blue[2]
