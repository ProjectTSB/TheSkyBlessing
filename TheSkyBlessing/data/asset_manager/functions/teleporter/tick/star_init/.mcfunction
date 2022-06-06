#> asset_manager:teleporter/tick/star_init/
#
#
#
# @within function asset_manager:teleporter/tick/active

# EntityStorageを再度取得する
    execute as @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function oh_my_dat:please
# グループIDから対象TP先を取得する
    data modify storage asset:teleporter TargetGroupID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID
    execute if data storage asset:teleporter TargetGroupID run function asset_manager:teleporter/tick/star_init/get_teleporters_from_group_id
# 星を召喚する
    execute if data storage asset:teleporter FilteredTeleporters[0] anchored eyes positioned ^ ^ ^ run function asset_manager:teleporter/tick/star_init/foreach
# テレポート先が無いならメッセージ
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID run data modify storage asset:teleporter IsTPStarExists set value true
    execute unless data storage asset:teleporter {IsTPStarExists:true} run tellraw @p[tag=this] {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
# 初期化タグ付与
    tag @s add TeleporterInit
# リセット
    data remove storage asset:teleporter IsTPStarExists
    data remove storage asset:teleporter FilteredTeleporters