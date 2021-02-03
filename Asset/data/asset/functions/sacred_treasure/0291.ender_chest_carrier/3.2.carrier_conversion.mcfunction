#> asset:sacred_treasure/0291.ender_chest_carrier/3.2.carrier_conversion
#
#
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/3.main

#> private
# @private
    #declare tag YvCarrier
    #declare tag YvCarrierModel

# エンチェスに変換
    setblock ~ ~ ~ ender_chest
    kill @e[type=armor_stand,tag=YvCarrierModel,sort=nearest,limit=1]
    tp @s ~ -200 ~