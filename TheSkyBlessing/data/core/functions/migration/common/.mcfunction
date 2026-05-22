#> core:migration/common/
# @within function core:migration/*/

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/be811a4579ca4286fc7b374eb28fa427ca91176b
data modify storage global IsNeedItemMigration set value true

#> for: trader update available
function api:trader/schedule_recipe_update_check
