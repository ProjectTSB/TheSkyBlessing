#> asset:spawner/004/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:16,Y:21,Z:-65}] in overworld positioned 16 21 -65 if entity @p[distance=..40] run function asset:spawner/004/register