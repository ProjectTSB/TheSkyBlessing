#> asset_manager:artifact/tick/migrate/migration_artifact
# @within function
#   asset_manager:artifact/tick/migrate/
#   asset_manager:artifact/tick/migrate/migration_artifact

# 神器生成
    data modify storage api: Argument.ID set from storage asset:artifact NeedMigrateArtifacts[-1].components."minecraft:custom_data".TSB.ID
    function api:artifact/box/from_id
# Slot を元に replace する
    data modify storage asset:artifact Slot set from storage asset:artifact NeedMigrateArtifacts[-1].Slot
    execute unless data storage asset:artifact {Slot:100b} unless data storage asset:artifact {Slot:101b} unless data storage asset:artifact {Slot:102b} unless data storage asset:artifact {Slot:103b} unless data storage asset:artifact {Slot:-106b} run function asset_manager:artifact/tick/migrate/replace.m with storage asset:artifact {}
    execute if data storage asset:artifact {Slot: 100b} run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute if data storage asset:artifact {Slot: 101b} run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if data storage asset:artifact {Slot: 102b} run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if data storage asset:artifact {Slot: 103b} run item replace entity @s armor.head from block 10000 0 10000 container.0
    execute if data storage asset:artifact {Slot:-106b} run item replace entity @s weapon.offhand from block 10000 0 10000 container.0

# 末尾削除
    data remove storage asset:artifact NeedMigrateArtifacts[-1]
# 要素があれば再帰
    execute if data storage asset:artifact NeedMigrateArtifacts[0] run function asset_manager:artifact/tick/migrate/migration_artifact
