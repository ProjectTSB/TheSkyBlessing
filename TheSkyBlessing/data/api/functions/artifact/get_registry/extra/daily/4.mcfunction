#> api:artifact/get_registry/extra/daily/4
#
# 日替わり神器のLv4神器の配列を返します
#
# @output storage api: Return.Registry.Daily.Lv4 : int[][]
# 神器のIDの2次元配列 1次元目は要素数n、2次元目は要素数が1以上で、神器IDを格納
#
# @api

# 日替わり神器のLv4プールを返す
    data modify storage api: Return.Registry.Daily.Lv4 set from storage asset:artifact RarityRegistryExtra.Daily[4]
