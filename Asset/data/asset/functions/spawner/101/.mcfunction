#> asset:spawner/101/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:345,Y:146,Z:56}] in overworld positioned 345 146 56 if entity @p[distance=..40] run function asset:spawner/101/register