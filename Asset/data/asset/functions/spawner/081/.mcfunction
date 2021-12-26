#> asset:spawner/081/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:345,Y:102,Z:345}] in overworld positioned 345 102 83 if entity @p[distance=..40] run function asset:spawner/081/register