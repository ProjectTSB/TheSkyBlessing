#> asset_manager:teleporter/_index.d
# @private

#> storage
# @within *
#   asset:teleporter/*/*
#   asset_manager:teleporter/**
    #declare storage asset:teleporter

#> TeleportPoint
# @within asset_manager:teleporter/**
    #declare tag FromTeleporter
    #declare tag Teleporter
    #declare tag TeleporterInit
    #declare tag TPStar
    #declare tag TPStarGreen
    #declare tag Teleported
    #declare tag TPCancel

#> for Init
# @within asset_manager:teleporter/star_init/*
    #declare tag TPStarInit

#> OpenDeclares
# @within asset_manager:island/dispel/register_tp
    #declare tag Teleporter