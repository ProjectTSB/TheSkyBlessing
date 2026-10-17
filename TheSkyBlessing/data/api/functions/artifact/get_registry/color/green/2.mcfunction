#> api:artifact/get_registry/color/green/2
#
# グリーンシャード産のLv2神器の配列を返します
#
# @output storage api: Return.Registry.Green.Lv2 : int[][]
# 神器のIDの2次元配列 1次元目は要素数n、2次元目は要素数が1以上で、神器IDを格納
#
# @api

# グリーンシャードのLv2プールを返す
    data modify storage api: Return.Registry.Green.Lv2 set from storage asset:artifact RarityRegistryWithColor.Green[2]
