#> asset_manager:mob/_index.d
# @private

#> storage
# @within *
#   asset_manager:mob/**
#   asset:mob/*/summon/summon
#   asset:mob/common/**
    #declare storage asset:mob

#> 初期化タグ
# @within function
#   asset:mob/*/summon/summon
#   asset:mob/common/summon
    #declare tag MobInit

#> MobAsset側で定義されたMobに付けられるタグ
# @within function
#   asset:mob/**
#   asset_manager:mob/**
    #declare tag AssetMob