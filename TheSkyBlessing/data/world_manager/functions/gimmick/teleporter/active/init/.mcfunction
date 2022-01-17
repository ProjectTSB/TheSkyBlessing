#> world_manager:gimmick/teleporter/active/init/
#
#
#
# @within function world_manager:gimmick/teleporter/active/

# グループIDを取得する
    execute as @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData run tellraw @p[tag=this] {"text":"このテレポーターは壊れているようだ...","color":"light_purple"}
# グループIDから対象TP先を取得する
    data modify storage world_manager:gimmick TargetGroupID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID
    function world_manager:gimmick/teleporter/data/get_from_id/
# テレポート先が無いならメッセージ
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData unless data storage world_manager:gimmick Teleporters[0] run tellraw @p[tag=this] {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
# 星を召喚する
    execute if data storage world_manager:gimmick Teleporters[0] anchored eyes positioned ^ ^ ^ run function world_manager:gimmick/teleporter/active/init/star/foreach
# タグ付ける
    tag @s add TeleporterInit
# リセット
    data remove storage world_manager:gimmick GroupData
    data remove storage world_manager:gimmick Targets
    data remove storage world_manager:gimmick Teleporters