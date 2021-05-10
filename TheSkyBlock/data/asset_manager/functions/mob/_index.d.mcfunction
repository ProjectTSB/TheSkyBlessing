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
#   core:tick
#   asset:mob/**
#   asset_manager:mob/**
    #declare tag AssetMob

#> this
# @within *
#   asset_manager:mob/core
#   asset_manager:mob/trigger_death
#   asset:mob/**
    #declare tag this

#> Killer
# @within *
#   asset_manager:mob/trigger_death
#   asset_manager:mob/find_player
#   asset:mob/*/death/2.death
    #declare tag Killer

#> Victim
# @within *
#   asset_manager:mob/core
#   asset:mob/*/attack/2.attack
    #declare tag Victim

#> Attacker
# @within *
#   asset_manager:mob/core
#   asset:mob/*/hurt/2.hurt
    #declare tag Attacker