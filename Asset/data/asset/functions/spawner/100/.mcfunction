#> asset:spawner/100/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:321,Y:115,Z:24}] in overworld positioned 321 115 24 if entity @p[distance=..40] run function asset:spawner/100/register