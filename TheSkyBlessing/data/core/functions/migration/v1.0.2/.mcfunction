#> core:migration/v1.0.2/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v1.0.2"
    execute unless data storage global FirstGameVersion run data modify storage global FirstGameVersion set value "v1.0.1"


#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/be811a4579ca4286fc7b374eb28fa427ca91176b
data modify storage global IsNeedItemMigration set value true

#> from: https://github.com/ProjectTSB/Asset/commit/f2cf9a7fd42024de7260562d2fca645cc8308ac3
execute if data storage global {FirstGameVersion:"v1.0.1"} run function core:migration/v1.0.2/migrate_end_nexus_loader_register

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/924850999bb1ed73bea66997e2a9d00fb2f12666
function api:trader/schedule_recipe_update_check
