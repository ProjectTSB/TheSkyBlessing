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
#   asset_manager:teleporter/**
#   api:teleporter/set_activation_state/from_nearest
    #declare tag Teleporter

#> TeleportPoint
# @within asset_manager:teleporter/tick/**
    #declare tag FromTeleporter
    #declare tag TeleporterInitialized
    #declare tag TeleporterInitializing
    #declare tag TPStar
    #declare tag TPStar.White
    #declare tag TPStar.Aqua
    #declare tag SuppressTeleport
    #declare tag TPCancel

#> for Init
# @within asset_manager:teleporter/tick/star_init/*
    #declare tag TPStarInit

#> OpenDeclares
# @within asset_manager:island/dispel/register_tp
    #declare tag Teleporter

#> TeleporterExists
# @within asset_manager:teleporter/update_activation_state/*
    #declare score_holder $TeleporterExists