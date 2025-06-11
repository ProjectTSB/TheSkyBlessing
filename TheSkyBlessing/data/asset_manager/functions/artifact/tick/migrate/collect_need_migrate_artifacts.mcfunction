#> asset_manager:artifact/tick/migrate/collect_need_migrate_artifacts
# @within function
#   asset_manager:artifact/tick/migrate/
#   asset_manager:artifact/tick/migrate/collect_need_migrate_artifacts

# データ処理
    execute store success storage asset:artifact IsVersionDifferent byte 1 run data modify storage asset:artifact Inventory[-1].tag.TSB.Version set from storage global GameVersion
    execute if data storage asset:artifact {IsVersionDifferent:true} if data storage asset:artifact Inventory[-1].tag.TSB.ID run data modify storage asset:artifact NeedMigrateArtifacts append from storage asset:artifact Inventory[-1]
# 末尾削除
    data remove storage asset:artifact Inventory[-1]
# 要素があれば再帰
    execute if data storage asset:artifact Inventory[0] run function asset_manager:artifact/tick/migrate/collect_need_migrate_artifacts
