#> api:artifact/get_registry/extra/daily/all
#
# 日替わり神器の配列を返します
#
# @output storage api: Return.Registry.Daily.All : int[][][]
# 神器のIDの2次元配列 1次元目は要素数5、2次元目は要素数n、3次元目は要素数が1以上で、神器IDを格納
#
# @api

# 日替わり神器のプールを返す
    data modify storage api: Return.Registry.Daily.All set from storage asset:artifact RarityRegistryExtra.Daily
