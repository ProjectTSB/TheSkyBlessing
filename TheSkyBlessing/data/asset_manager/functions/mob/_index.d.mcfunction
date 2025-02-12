#> asset_manager:mob/_index.d
# @private

#> storage
# @within *
#   api:mob/core/**
#   asset:mob/*/register
#   asset:mob/*/*/
#   asset:mob/**
#   asset:mob/extends
#   asset:mob/super.*
#   asset_manager:mob/**
#   asset:mob/*/summon/2.summon
#   asset:mob/common/**
    #declare storage asset:mob

#> 初期化タグ
# @within function
#   api:mob/core/summon
#   asset:mob/*/summon/*
#   asset:mob/common/summon
#   asset_manager:mob/summon/init
    #declare tag MobInit

#> MobAsset側で定義されたMobに付けられるタグ
# @within function
#   core:tick/
#   asset:mob/**
#   asset_manager:mob/**
#   api:mob/is_asset_mob
    #declare tag AssetMob

#> this
# @within *
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/death/
#   asset:mob/**
    #declare tag this

#> Killer
# @within *
#   asset_manager:mob/triggers/death/*
#   asset_manager:artifact/triggers/attack/vanilla
#   api:damage/core/health_subtract/non-player/kill
#   asset:mob/*/death/**
    #declare tag Killer

#> Victim
# @within *
#   asset_manager:mob/triggers/attack/add_tag_each_victim
#   asset_manager:mob/triggers/attack/foreach
#   asset:mob/*/attack/**
    #declare tag Victim

#> Attacker
# @within *
#   asset_manager:mob/triggers/hurt/foreach
#   asset:mob/*/hurt/**
    #declare tag Attacker

#> RemovingAssetEntity
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/remove/
#   api:mob/core/remove
#declare tag RemovingAssetEntity

#> Bossbar用のタグ
# @within function
#   asset_manager:mob/tick/*
#   asset_manager:mob/bossbar/*
    #declare tag BossbarTarget
