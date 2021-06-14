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
#   lib:damage/core/non-player-process
#   asset:mob/*/death/2.death
    #declare tag Killer

#> Victim
# @within *
#   asset_manager:mob/triggers/
#   asset:mob/*/attack/2.attack
    #declare tag Victim

#> Attacker
# @within *
#   asset_manager:mob/triggers/
#   asset:mob/*/hurt/2.hurt
    #declare tag Attacker