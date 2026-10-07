#> api:artifact/get_registry/normal/3
#
# 通常シャード産のLv3神器の配列を返します
#
# @output storage api: Return.Registry.Normal.Lv3 : int[][]
# 神器のIDの2次元配列 1次元目は要素数n、2次元目は要素数が1以上で、神器IDを格納
#
# @api

# シャードのLv3プールを返す
    data modify storage api: Return.Registry.Normal.Lv3 set from storage asset:artifact RarityRegistry[3]
