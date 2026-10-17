#> api:artifact/get_registry/color/green/all
#
# グリーンシャード産の神器の配列を返します
#
# @output storage api: Return.Registry.Green.Lv4 : int[][][]
# 神器のIDの2次元配列 1次元目は要素数5、2次元目は要素数n、3次元目は要素数が1以上で、神器IDを格納
#
# @api

# グリーンシャードのプールを返す
    data modify storage api: Return.Registry.Green.All set from storage asset:artifact RarityRegistryWithColor.Green
