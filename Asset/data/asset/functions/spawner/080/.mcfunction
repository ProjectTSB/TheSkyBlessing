#> asset:spawner/080/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:375,Y:109,Z:87}] in overworld positioned 375 109 87 if entity @p[distance=..40] run function asset:spawner/080/register