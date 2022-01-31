#> world_manager:gimmick/teleporter/_index.d
# @private

#> TeleportPoint
# @within world_manager:gimmick/teleporter/**
    #declare tag this
    #declare tag FromTeleporter
    #declare tag Teleporter
    #declare tag TeleporterInit
    #declare tag TPStar
    #declare tag TPStarGreen
    #declare tag Teleported

#> for Init
# @ world_manager:gimmick/teleporter/active/init/star/*
    #declare tag TPStarInit

#> OpenDeclares
# @within asset_manager:island/dispel/register_tp
    #declare tag Teleporter