#> asset:trader/0003.brewing_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:11,Y:21,Z:-75}] positioned 11 21 -75 if entity @p[distance=..40] run function asset:trader/0003.brewing_merchant/register/register