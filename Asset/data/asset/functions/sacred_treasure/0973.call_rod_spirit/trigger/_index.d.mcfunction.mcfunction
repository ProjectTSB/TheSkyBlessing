#> asset:sacred_treasure/0973.call_rod_spirit/trigger/_index.d.mcfunction
# @private

#> tags
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/**
    #declare tag R1.Spirit
    #declare tag R1.SpiritInit
    #declare tag R1.Shot
    #declare tag R1.ShotInit
    #declare tag R1.IDCopyBase
    #declare tag R1.Hit
    #declare tag R1.CannotUse

#> どうしてもSummon以外でAssetMobを使う用事がある
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot
    #declare tag AssetMob
    #declare tag AutoKillWhenDieVehicle