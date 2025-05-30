#> asset_manager:effect/_index.d
# @private

#> Storage
# @within
#   function
#       api:entity/mob/effect/**
#       asset:effect/extends
#       asset:effect/super.*
#       asset:effect/*/register
#       asset:effect/*/*/
#       asset_manager:effect/**
#       asset_manager:artifact/create/set_lore/equipment/**
#   loot_table
#       asset_manager:artifact/generate_lore/equipment_description
    #declare storage asset:effect

#> Tags
# @within function
#   api:entity/mob/effect/**
#   core:tick/
#   asset_manager:effect/give/give
#   asset_manager:effect/tick
#   asset_manager:effect/foreach
    #declare tag DeathProcess
    #declare tag HasAssetEffect
