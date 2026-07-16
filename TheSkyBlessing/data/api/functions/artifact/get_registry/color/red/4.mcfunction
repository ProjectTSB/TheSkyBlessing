#> api:artifact/get_registry/color/red/4
#
# レッドシャード産のLv4神器の配列を返します
#
# @output storage api: Return.Registry.Red.Lv4 : int[][]
# 神器のIDの2次元配列 1次元目は要素数n、2次元目は要素数が1以上で、神器IDを格納
#
# @api

# レッドシャードのLv4プールを返す
    data modify storage api: Return.Registry.Red.Lv4 set from storage asset:artifact RarityRegistryWithColor.Red[4]
