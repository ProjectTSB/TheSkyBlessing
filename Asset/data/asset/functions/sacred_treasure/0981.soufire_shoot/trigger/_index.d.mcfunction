#> asset:sacred_treasure/0981.soufire_shoot/trigger/_index.d
# @private

#> tag
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/**
    #declare tag R9.BigFireball
    #declare tag R9.SmallFireball
    #declare tag R9.Init
    #declare tag R9.CopyBase
    #declare tag R9.OwnerPlayer
    #declare tag R9.NotTarget

#> どうしてもSummon以外でAssetMobを使う用事がある
# @within function
#   asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/split
#   asset:sacred_treasure/0981.soufire_shoot/trigger/3.main
    #declare tag AssetMob
    #declare tag AutoKillWhenDieVehicle