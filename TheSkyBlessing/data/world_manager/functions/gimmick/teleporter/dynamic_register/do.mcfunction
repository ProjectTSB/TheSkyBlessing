#> world_manager:gimmick/teleporter/dynamic_register/do
#
#
#
# @within function world_manager:gimmick/teleporter/dynamic_register/

# TODO dynamic_registerをapi:に移す
# Argument{Color?: Enum, Group: string}みたいなのを用意する
# 実行座標を登録するぜ

# 引数代入
    data modify storage world_manager:gimmick TargetGroupID set from storage api: Argument.GroupID
# グループデータの取得
    function world_manager:gimmick/teleporter/data/pick
# グループデータがまだ存在しなかった場合の処理
    execute unless data storage world_manager:gimmick TeleporterGroup run data modify storage world_manager:gimmick TeleporterGroup set value {ID:"",Teleporters:[]}
    data modify storage world_manager:gimmick TeleporterGroup.ID set from storage api: Argument.GroupID
# 実行座標取得用に移動
    tp @s ~ ~ ~
# テレポーターデータの追加
    data modify storage world_manager:gimmick TeleporterGroup.Teleporters append value {}
    data modify storage world_manager:gimmick TeleporterGroup.Teleporters[-1].Pos set from entity @s Pos
    data modify storage world_manager:gimmick TeleporterGroup.Teleporters[-1].Data.Activate set value true
    data modify storage world_manager:gimmick TeleporterGroup.Teleporters[-1].Data.Color set from storage api: Argument.Color
# 戻す
    function world_manager:gimmick/teleporter/data/revert
# リセット
    tp @s 0.0 0.0 0.0
    data remove storage api: Argument.GroupID