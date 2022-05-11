#> asset:spawner/001/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:64,Y:19,Z:-17}] in overworld positioned 64 19 -17 if entity @p[distance=..40] run function asset:spawner/001/register