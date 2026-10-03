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
# tick が設定・解除し、process.m が死亡中の処理方法を判定する。
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/process.m
    #declare tag DeathProcess

#> Effect が付与されているエンティティ
# give/tick が付与状態を更新し、core tick と remove API が対象を判定する。
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
# tick の走査中だけ付ける。API の対象がこの付与先なら context の書き戻し・読み直しを行う。
# remove / end 中の書き戻し・読み直しは、Current.Phase で無効にする。
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/context/before_api
#   asset_manager:effect/context/after_api
    #declare tag Effect.CurrentOwner

#> Effect 走査用スコア
# 一つの付与先の snapshot と処理予定の走査に使い、tick の末尾で破棄する。
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/snapshot.m
#   asset_manager:effect/foreach.m
    #declare score_holder $EffectTickIndex
    #declare score_holder $EffectTickCount

#> 牛乳による削除条件の判定
# process.m が取得・判定し、foreach.m が Effect ごとに破棄する。
# @within function
#   asset_manager:effect/process.m
#   asset_manager:effect/foreach.m
    #declare score_holder $RequireClearLv
