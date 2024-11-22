#> asset_manager:teleporter/_index.d
# @private

#> storage
# @within *
#   asset:teleporter/*/*
#   asset:teleporter/common/register
#   asset_manager:teleporter/**
    #declare storage asset:teleporter

#> Teleporter
# @within
#   core:tick/
#   asset_manager:teleporter/**
#   api:teleporter/set_activation_state/from_nearest
    #declare tag Teleporter

#> TeleportPoint
# @within asset_manager:teleporter/tick/**
    #declare tag FromTeleporter
    #declare tag TeleporterInitialized
    #declare tag TeleporterInitializing
    #declare tag TPStar
    #declare tag TPStar.Active
    #declare tag SuppressTeleport
    #declare tag TPCancel

#> for Init
# @within asset_manager:teleporter/tick/summon_star/**
    #declare tag TPStarInit

#> OpenDeclares
# @within asset_manager:island/dispel/register_tp
    #declare tag Teleporter
