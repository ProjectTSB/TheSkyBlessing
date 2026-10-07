#> api:artifact/get_registry/normal/4
#
# 通常シャード産のLv1神器の配列を返します
#
# @output storage api: Return.Registry.Normal.Lv4 : int[][]
# 神器のIDの2次元配列 1次元目は要素数n、2次元目は要素数が1以上で、神器IDを格納
#
# @api

# シャードのLv4プールを返す
    data modify storage api: Return.Registry.Normal.Lv4 set from storage asset:artifact RarityRegistry[4]
