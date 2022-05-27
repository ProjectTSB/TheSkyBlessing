#> world_manager:gimmick/teleporter/star_init/
#
#
#
# @within function world_manager:gimmick/teleporter/active

# グループIDを取得する
    execute as @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function oh_my_dat:please
# 存在しない場合はエラーを出す
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData run tellraw @p[tag=this] [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"テレポーターのデータ","color":"gold"},{"text":"が正常に取得できませんでした。","color":"white"}]
# グループIDから対象TP先を取得する
    data modify storage world_manager:gimmick TargetGroupID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID
    execute if data storage world_manager:gimmick TargetGroupID run function world_manager:gimmick/teleporter/data/pick
# 破壊的変更を行うとまずいのでコピーする
    data modify storage world_manager:gimmick Teleporters set from storage world_manager:gimmick TeleporterGroup.Teleporters
# 星を召喚する
    execute if data storage world_manager:gimmick Teleporters[0] anchored eyes positioned ^ ^ ^ run function world_manager:gimmick/teleporter/star_init/foreach
# テレポート先が無いならメッセージ
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID run data modify storage world_manager:gimmick IsTPStarExists set value true
    execute unless data storage world_manager:gimmick {IsTPStarExists:true} run tellraw @p[tag=this] {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
# テレポーターデータを元に戻す
    function world_manager:gimmick/teleporter/data/revert
# 初期化タグ付与
    tag @s add TeleporterInit
# リセット
    data remove storage world_manager:gimmick IsTPStarExists
    data remove storage world_manager:gimmick Teleporters