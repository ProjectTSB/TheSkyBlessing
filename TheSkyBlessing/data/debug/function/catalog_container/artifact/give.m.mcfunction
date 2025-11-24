#> debug:catalog_container/artifact/give.m
#
# 指定の神器が全て詰まったチェストを実行者に与えます。
#
# @input args
#   _:
#   | "normal-all" | "red-all" | "blue-all" | "green-all"
#   | "normal-1"   | "red-1"   | "blue-1"   | "green-1"
#   | "normal-2"   | "red-2"   | "blue-2"   | "green-2"
#   | "normal-3"   | "red-3"   | "blue-3"   | "green-3"
#   | "normal-4"   | "red-4"   | "blue-4"   | "green-4"
#   | "all"
# @private
# @user

#> ページカウンター
# @within function debug:catalog_container/artifact/**give*
    #declare score_holder $Page

# カタログリストを生成
    $function debug:catalog_container/artifact/init.m {_:$(_)}

# カタログをLib: Arrayに移動
    function lib:array/session/open
    data modify storage lib: Array set from storage debug:catalog_container Artifact.CatalogItems
    data remove storage debug:catalog_container Artifact.CatalogItems

# カタログ名取得
    $data modify storage debug:catalog_container Artifact.Give.Name set value $(_)

# ページカウント準備
    scoreboard players set $Page Temporary 0

# 再帰でチェストに詰めてGive
    execute if data storage lib: Array[0] run function debug:catalog_container/artifact/core/give

# リセット
    function lib:array/session/close
    data remove storage debug:catalog_container Artifact.Give
    scoreboard players reset $Page Temporary
