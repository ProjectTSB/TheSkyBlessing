#> api:artifact/get_registry/color/red/all
#
# レッドシャード産の神器の配列を返します
#
# @output storage api: Return.Registry.Green.Lv4 : int[][][]
# 神器のIDの2次元配列 1次元目は要素数5、2次元目は要素数n、3次元目は要素数が1以上で、神器IDを格納
#
# @api

# シャードのプールを返す
    data modify storage api: Return.Registry.Red.All set from storage asset:artifact RarityRegistryWithColor.Red
