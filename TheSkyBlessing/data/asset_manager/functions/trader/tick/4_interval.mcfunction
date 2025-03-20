#> asset_manager:trader/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 奈落回避
    execute if predicate lib:is_void unless predicate lib:is_vehicle run function asset_manager:trader/to_spawn

# 更新処理
    execute unless score $TraderRecipeVersion Global = @s RecipeVersion run function asset_manager:trader/common/update_recipe
