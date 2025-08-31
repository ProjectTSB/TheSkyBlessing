#> debug:catalog_container/artifact/fill
#
# 実行位置のコンテナをカタログ内容で埋めます
# ラージチェストの場合は繋がってるもう片方のチェストも埋めます
#
# @private
# @user

# 自身がラージチェストleftの場合はrightから先にfill開始
    execute if block ~ ~ ~ #lib:chests[facing=north,type=left] positioned ~1 ~ ~ run function debug:catalog_container/artifact/core/fill_init
    execute if block ~ ~ ~ #lib:chests[facing=south,type=left] positioned ~-1 ~ ~ run function debug:catalog_container/artifact/core/fill_init
    execute if block ~ ~ ~ #lib:chests[facing=east,type=left] positioned ~ ~ ~1 run function debug:catalog_container/artifact/core/fill_init
    execute if block ~ ~ ~ #lib:chests[facing=west,type=left] positioned ~ ~ ~-1 run function debug:catalog_container/artifact/core/fill_init

# fill開始
    function debug:catalog_container/artifact/core/fill_init

# 自身がラージチェストrightの場合はleftにもfill
    execute if block ~ ~ ~ #lib:chests[facing=north,type=right] positioned ~-1 ~ ~ run function debug:catalog_container/artifact/core/fill_init
    execute if block ~ ~ ~ #lib:chests[facing=south,type=right] positioned ~1 ~ ~ run function debug:catalog_container/artifact/core/fill_init
    execute if block ~ ~ ~ #lib:chests[facing=east,type=right] positioned ~ ~ ~-1 run function debug:catalog_container/artifact/core/fill_init
    execute if block ~ ~ ~ #lib:chests[facing=west,type=right] positioned ~ ~ ~1 run function debug:catalog_container/artifact/core/fill_init
