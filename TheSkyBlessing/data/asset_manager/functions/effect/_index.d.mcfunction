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

#> 死亡時の Effect 処理
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/process.m
    #declare tag DeathProcess

#> Effect が付与されているエンティティ
# @within function
#   core:tick/
#   asset_manager:effect/give/give
#   asset_manager:effect/tick
#   api:entity/mob/effect/core/remove/from_id
#   api:entity/mob/effect/core/remove/from_level/
    #declare tag HasAssetEffect

#> thisタグ
# @within function
#   asset_manager:effect/tick
#   asset:effect/**
    #declare tag this

#> 現在処理中の Effect の付与先
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/context/before_api
#   asset_manager:effect/context/after_api
    #declare tag Effect.CurrentOwner

#> 牛乳による削除条件の判定
# @within function
#   asset_manager:effect/process.m
#   asset_manager:effect/foreach
    #declare score_holder $RequireClearLv
