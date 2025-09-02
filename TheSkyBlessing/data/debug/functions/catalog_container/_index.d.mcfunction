#> debug:catalog_container/_index.d
# @private

#> storage
# @within function debug:catalog_container/**
    #define storage debug:catalog_container

#> 総当り用Temp
# 名前を$IDにすると神器取得処理内部と干渉するのでやめた方がいい(1敗)
# @within function debug:catalog_container/artifact/core/fill_*
    #define score_holder $Counter
