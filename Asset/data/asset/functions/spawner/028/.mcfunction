#> asset:spawner/028/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:12,Y:13,Z:74}] in overworld positioned 12 13 74 if entity @p[distance=..40] run function asset:spawner/028/register