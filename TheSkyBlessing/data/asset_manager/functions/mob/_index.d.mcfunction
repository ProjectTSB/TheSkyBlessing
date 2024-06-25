#> asset_manager:mob/_index.d
# @private

#> storage
# @within *
#   api:mob/core/**
#   asset:mob/*/register
#   asset:mob/*/*/
#   asset:mob/extends
#   asset:mob/super.*
#   asset_manager:mob/**
#   asset:mob/*/summon/2.summon
#   asset:mob/common/**
    #declare storage asset:mob

#> 初期化タグ
# @within function
#   api:mob/core/summon
#   asset:mob/*/summon/
#   asset:mob/*/summon/2.summon
#   asset:mob/common/summon
    #declare tag MobInit

#> MobAsset側で定義されたMobに付けられるタグ
# @within function
#   core:tick/
#   mob_manager:init/
#   asset:mob/**
#   asset_manager:mob/**
    #declare tag AssetMob

#> MobAsset以外のEntityにCommonTagを実行させるためのタグ
# @within function
#   core:tick/
#   asset:**
    #declare tag AllowProcessingCommonTag

#> this
# @within *
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/death/
#   asset:mob/**
    #declare tag this

#> Killer
# @within *
#   asset_manager:mob/triggers/death/*
#   api:damage/core/health_subtract/non-player
#   player_manager:vanilla_attack
#   asset:mob/*/death/**
    #declare tag Killer

#> Victim
# @within *
#   asset_manager:mob/triggers/
#   asset:mob/*/attack/**
    #declare tag Victim

#> Attacker
# @within *
#   asset_manager:mob/triggers/
#   asset:mob/*/hurt/**
    #declare tag Attacker

#> 汎用タグ類
# @within function
#   asset_manager:mob/common_tag/*
#   asset:**
    #declare tag AllowRideBannedVehicle
    #declare tag AntiFallDamage
    #declare tag AntiVoid
    #declare tag AntiBurn
    #declare tag AlwaysBurn
    #declare tag AlwaysInvisible
    #declare tag AlwaysSlowFall
    #declare tag AutoKillWhenDieVehicle
    #declare tag AutoKillWhenDiePassenger
    #declare tag Frozen
    #declare tag Drown

#> 汎用奈落耐性処理用タグ
# @within function
#   asset_manager:mob/common_tag/anti_void_action/**
    #declare tag AntiVoidTargets
    #declare tag AntiVoidTarget
    #declare tag DefaultNoGravity
    #declare tag this


#> Bossbar用のタグ
# @within function
#   asset_manager:mob/tick/*
#   asset_manager:mob/bossbar/*
    #declare tag BossbarTarget
