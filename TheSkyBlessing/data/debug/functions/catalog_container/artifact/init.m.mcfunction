#> debug:catalog_container/artifact/init.m
#
# 神器カタログリストを初期化します
#
# 使い方: 起点のコマンドブロックでinit.mを実行し、
# チェーンを伸ばして各チェストにfill.mを実行する
# 大量の再帰が行われるのでリピート実行しないこと
#
# @input args
#   _:
#   | "normal-all" | "normal-1" | "normal-2" | "normal-3" | "normal-4"
#   | "red-all"    | "red-1"    | "red-2"    | "red-3"    | "red-4"
#   | "blue-all"   | "blue-1"   | "blue-2"   | "blue-3"   | "blue-4"
#   | "green-all"  | "green-1"  | "green-2"  | "green-3"  | "green-4"
#   | "all"
# @private
# @user


# 引数取得
    $data modify storage debug:catalog_container Arg set value $(_)

# all指定時はリストの代わりに総当り用カウンターを用意して終了
    execute if data storage debug:catalog_container {Arg:"all"} run data modify storage debug:catalog_container Artifact.Mode set value "ArtifactAll"
    execute if data storage debug:catalog_container {Arg:"all"} run data modify storage debug:catalog_container Artifact.IDCounter set value 0
    execute if data storage debug:catalog_container {Arg:"all"} run return run data remove storage debug:catalog_container Arg

# カタログリスト準備
    data modify storage debug:catalog_container Artifact.Mode set value "ArtifactIDList"
    data remove storage debug:catalog_container Artifact.IDList
    function lib:array/session/open
# 色毎
    execute if data storage debug:catalog_container {Arg:"normal-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistry
    execute if data storage debug:catalog_container {Arg:"red-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Red
    execute if data storage debug:catalog_container {Arg:"blue-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Blue
    execute if data storage debug:catalog_container {Arg:"green-all"} run data modify storage debug:catalog_container Artifact.IDList set from storage asset:artifact RarityRegistryWithColor.Green
# 色毎の場合はarray/flatが追加で必要
    execute if data storage debug:catalog_container Artifact.IDList run data remove storage debug:catalog_container Artifact.IDList[0]
    execute if data storage debug:catalog_container Artifact.IDList run data modify storage lib: Array set from storage debug:catalog_container Artifact.IDList
    execute if data storage debug:catalog_container Artifact.IDList run function lib:array/flat
    execute if data storage debug:catalog_container Artifact.IDList run data modify storage debug:catalog_container Artifact.IDList set from storage lib: Array
# ランク毎
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
# 挿入処理は末尾から挿入するので反転も
    data modify storage lib: Array set from storage debug:catalog_container Artifact.IDList
    function lib:array/flat
    function lib:array/reverse
    data modify storage debug:catalog_container Artifact.IDList set from storage lib: Array

# 後片付け
    function lib:array/session/close
    data remove storage debug:catalog_container Arg
