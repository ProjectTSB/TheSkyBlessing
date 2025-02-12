#> mob_manager:processing_tag/_index.d
# @private

#> Kill
# @within function
#   mob_manager:processing_tag/
#   api:mob/core/kill
#   api:damage/core/health_subtract/non-player/
#   asset_manager:artifact/triggers/attack/vanilla/
#   asset_manager:mob/triggers/
    #declare tag Kill

#> RemovingEntity
# @within function
#   mob_manager:processing_tag/
#   api:mob/core/remove
#   asset_manager:mob/triggers/remove/
#declare tag RemovingEntity

#> MobAsset以外のEntityにCommonTagを実行させるためのタグ
# @within function
#   mob_manager:processing_tag/
#   asset:**
#   asset_manager:mob/summon/set_tag
#declare tag AllowProcessingCommonTag

#> 汎用タグ類
# @within function
#   mob_manager:processing_tag/common_tag/*
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
