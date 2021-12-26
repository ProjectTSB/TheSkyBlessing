#> asset:spawner/002/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:21,Y:15,Z:21}] in overworld positioned 21 15 -14 if entity @p[distance=..48] run function asset:spawner/002/register