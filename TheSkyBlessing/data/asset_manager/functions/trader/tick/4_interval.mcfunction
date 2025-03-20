#> asset_manager:trader/tick/4_interval
#
#
#
# @within function core:tick/4_interval

#> Private
# @private
    #declare score_holder $Version

# 奈落回避
    execute if predicate lib:is_void unless predicate lib:is_vehicle run function asset_manager:trader/to_spawn

# 更新処理
    scoreboard players set $Version Temporary 0
    execute store result score $Version Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.RecipeVersion
    execute unless score $TraderRecipeVersion Global = $Version Temporary run function asset_manager:trader/common/update_recipe
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.RecipeVersion int 1 run scoreboard players get $TraderRecipeVersion Global

# リセット
    scoreboard players reset $Version Temporary
