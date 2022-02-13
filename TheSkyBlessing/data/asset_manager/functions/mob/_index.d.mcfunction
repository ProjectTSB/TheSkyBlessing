#> asset_manager:mob/_index.d
# @private

#> storage
# @within *
#   asset_manager:mob/**
#   asset:mob/*/summon/2.summon
#   asset:mob/common/**
    #declare storage asset:mob

#> 初期化タグ
# @within function
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

#> this
# @within *
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/death/
#   asset:mob/**
    #declare tag this

#> Killer
# @within *
#   asset_manager:mob/triggers/death/*
#   lib:damage/core/health_subtract/non-player
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
#   asset:mob/*/*/**
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
