#> world_manager:gimmick/teleporter/init/
#
#
#
# @within function world_manager:gimmick/teleporter/active

# グループIDを取得する
    execute as @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData run tellraw @p[tag=this] {"text":"このテレポーターは壊れているようだ...","color":"light_purple"}
# グループIDから対象TP先を取得する
    data modify storage world_manager:gimmick TargetGroupID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID
    function world_manager:gimmick/teleporter/data/pick
# 破壊的変更を行うとまずいのでコピーする
    data modify storage world_manager:gimmick Teleporters set from storage world_manager:gimmick TeleporterGroup.Teleporters
# 星を召喚する
    execute if data storage world_manager:gimmick Teleporters[1] anchored eyes positioned ^ ^ ^ run function world_manager:gimmick/teleporter/init/star/foreach
# テレポート先が無いならメッセージ
    execute at @s anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.51] if score @s TPStarFromUserID = @p[tag=this] UserID run data modify storage world_manager:gimmick IsTPStarExists set value true
    execute unless data storage world_manager:gimmick {IsTPStarExists:true} run tellraw @p[tag=this] {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
# 使った後は元に戻そうね
    function world_manager:gimmick/teleporter/data/revert
# タグ付ける
    tag @s add TeleporterInit
# リセット
    data remove storage world_manager:gimmick IsTPStarExists
    data remove storage world_manager:gimmick Teleporters