#> asset:spawner/160/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:21,Y:64,Z:21}] in overworld positioned 21 64 255 if entity @p[distance=..48] run function asset:spawner/160/register