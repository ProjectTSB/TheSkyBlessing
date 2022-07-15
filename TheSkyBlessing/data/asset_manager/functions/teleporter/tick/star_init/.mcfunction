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
# 繋がってる星があるかのチェック
    execute store success storage asset:teleporter IsTPStarExists byte 1 if data storage asset:teleporter FilteredTeleporters[].Data{ActivationState:"Activate"}
# つながっている星があるのであれば初期化中タグを付与し、星データをプレイヤーに格納する
    execute if data storage asset:teleporter {IsTPStarExists: true} run function oh_my_dat:please
    execute if data storage asset:teleporter {IsTPStarExists: true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters set from storage asset:teleporter FilteredTeleporters
    execute if data storage asset:teleporter {IsTPStarExists: true} run tag @s add TeleporterInitializing
# なければ初期化済タグを付与し、メッセージを出す
    execute if data storage asset:teleporter {IsTPStarExists:false} run tellraw @s {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
    execute if data storage asset:teleporter {IsTPStarExists:false} run tag @s add TeleporterInitialized
# リセット
    data remove storage asset:teleporter IsTPStarExists
    data remove storage asset:teleporter FilteredTeleporters