#> asset_manager:object/_index.d
# @private

#> storage
# @within *
#   asset_manager:object/**
#   asset:object/**
#   api:object/**
    #declare storage asset:object

#> 初期化タグ
# @within
#   asset_manager:object/**
#   api:object/core/summon
#   asset:object/**
    #declare tag ObjectInit

#> ObjectAsset側で定義されたEntityに付けられるタグ
# @within function
#   core:tick/
#   asset_manager:object/summon/init
    #declare tag AssetObject

#> ObjectのTickを無効化するタグ
# @within
#   core:tick/
#   asset:object/*/register
#   asset_manager:object/summon/init
    #declare tag Object.DisableTicking

#> thisタグ
# @within function
#   asset_manager:object/triggers/tick
#   asset:object/**
    #declare tag this
