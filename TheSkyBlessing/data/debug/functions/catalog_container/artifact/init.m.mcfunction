#> debug:catalog_container/artifact/init.m
#
# 指定の神器カタログリストを生成します
#
# 使い方: 起点のコマンドブロックでinit.mを実行し、
# チェーンを伸ばして各チェストにfill.mを実行する
# 大量の再帰が行われるのでリピート実行しないこと
#
# @input args
#   _:
#   | "normal-all" | "red-all" | "blue-all" | "green-all"
#   | "normal-1"   | "red-1"   | "blue-1"   | "green-1"
#   | "normal-2"   | "red-2"   | "blue-2"   | "green-2"
#   | "normal-3"   | "red-3"   | "blue-3"   | "green-3"
#   | "normal-4"   | "red-4"   | "blue-4"   | "green-4"
#   | "all"
# @output
#   T extends object
#   storage debug:catalog_container CatalogItems: [T] @ N
# @within function debug:catalog_container/artifact/give.m
# @user


# 引数取得
    $data modify storage debug:catalog_container Arg set value $(_)

# カタログを初期化。ここに神器アイテムのNBTが突っ込まれる。
    data remove storage debug:catalog_container Artifact.CatalogItems

# all指定時は5000から降順総当りでカタログ生成して終了。IDが5000以上の神器が作られるようになったら直してね
    execute if data storage debug:catalog_container {Arg:"all"} run data modify storage debug:catalog_container Artifact.Mode set value "BruteForce"
    execute if data storage debug:catalog_container {Arg:"all"} run scoreboard players set $Counter Temporary 5000
    execute if data storage debug:catalog_container {Arg:"all"} run function debug:catalog_container/artifact/core/generate_catalog
    execute if data storage debug:catalog_container {Arg:"all"} run data remove storage debug:catalog_container Artifact.Mode
    execute if data storage debug:catalog_container {Arg:"all"} run return run data remove storage debug:catalog_container Arg

# IDリスト準備
    data remove storage debug:catalog_container Artifact.IDList
# IDリストをセット (色指定の場合)
    execute if data storage debug:catalog_container {Arg:"normal-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistry
    execute if data storage debug:catalog_container {Arg:"red-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Red
    execute if data storage debug:catalog_container {Arg:"blue-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Blue
    execute if data storage debug:catalog_container {Arg:"green-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Green
# 色指定だった場合はint配列の配列の配列になってるのでint配列の配列に
    execute if data storage debug:catalog_container Artifact.IDList run data remove storage debug:catalog_container Artifact.IDList[0]
    execute if data storage debug:catalog_container Artifact.IDList run data modify storage debug:catalog_container Temp append from storage debug:catalog_container Artifact.IDList[][]
    execute if data storage debug:catalog_container Artifact.IDList run data modify storage debug:catalog_container Artifact.IDList set from storage debug:catalog_container Temp
    data remove storage debug:catalog_container Temp
# IDリストをセット (ランク指定の場合)
    execute if data storage debug:catalog_container {Arg:"normal-1"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistry[1]
    execute if data storage debug:catalog_container {Arg:"normal-2"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistry[2]
    execute if data storage debug:catalog_container {Arg:"normal-3"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistry[3]
    execute if data storage debug:catalog_container {Arg:"normal-4"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistry[4]
    execute if data storage debug:catalog_container {Arg:"red-1"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Red[1]
    execute if data storage debug:catalog_container {Arg:"red-2"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Red[2]
    execute if data storage debug:catalog_container {Arg:"red-3"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Red[3]
    execute if data storage debug:catalog_container {Arg:"red-4"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Red[4]
    execute if data storage debug:catalog_container {Arg:"blue-1"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Blue[1]
    execute if data storage debug:catalog_container {Arg:"blue-2"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Blue[2]
    execute if data storage debug:catalog_container {Arg:"blue-3"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Blue[3]
    execute if data storage debug:catalog_container {Arg:"blue-4"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Blue[4]
    execute if data storage debug:catalog_container {Arg:"green-1"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Green[1]
    execute if data storage debug:catalog_container {Arg:"green-2"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Green[2]
    execute if data storage debug:catalog_container {Arg:"green-3"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Green[3]
    execute if data storage debug:catalog_container {Arg:"green-4"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Green[4]

# int配列の配列になってるので普通のint配列に
    data modify storage debug:catalog_container Temp append from storage debug:catalog_container Artifact.IDList[][]
    data modify storage debug:catalog_container Artifact.IDList set from storage debug:catalog_container Temp
    data remove storage debug:catalog_container Temp

# IDリストからカタログ生成
    data modify storage debug:catalog_container Artifact.Mode set value "IDList"
    function debug:catalog_container/artifact/core/generate_catalog

# 後片付け
    data remove storage debug:catalog_container Artifact.Mode
    data remove storage debug:catalog_container Artifact.IDList
    data remove storage debug:catalog_container Arg
