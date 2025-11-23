#> debug:catalog_container/_index.d
# @private

#> storage
# @within * debug:catalog_container/**
    #define storage debug:catalog_container

#> 神器総当り用Temp
# 名前を$IDにすると神器取得処理内部と干渉するのでやめた方がいい(1敗)
# @within function debug:catalog_container/artifact/core/fill_*
    #define score_holder $Counter

#> 神器チェスト
# @within function debug:catalog_container/artifact/core/give
    #declare loot_table debug:catalog_container/artifact_give
