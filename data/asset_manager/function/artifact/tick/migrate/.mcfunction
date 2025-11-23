#> asset_manager:artifact/tick/migrate/
# @within function core:tick/player/pre

# インベントリ取得
    function api:data_get/inventory
    data modify storage asset:artifact Inventory set from storage api: Inventory
# インベントリから Migrate 対象の神器のデータを取り出す
    execute if data storage asset:artifact Inventory[0] run function asset_manager:artifact/tick/migrate/collect_need_migrate_artifacts
# マイグレーション
    execute store success storage asset:artifact HasNeedMigrateArtifact byte 1 if data storage asset:artifact NeedMigrateArtifacts[0]
    execute if data storage asset:artifact {HasNeedMigrateArtifact:true} run function asset_manager:artifact/tick/migrate/migration_artifact
    execute if data storage asset:artifact {HasNeedMigrateArtifact:true} run tellraw @s [{"text":"[!] 神器を最新バージョン用に更新しました。","color":"yellow"}]
    execute if data storage asset:artifact {HasNeedMigrateArtifact:true} run function api:data_get/invalidate_cache

# リセット
    data remove storage asset:artifact Inventory
    data remove storage asset:artifact IsVersionDifferent
    data remove storage asset:artifact Slot
    data remove storage asset:artifact NeedMigrateArtifacts
    data remove storage asset:artifact HasNeedMigrateArtifact
