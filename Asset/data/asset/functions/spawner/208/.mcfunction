#> asset:spawner/208/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:96,Y:160,Z:96}] in overworld positioned 96 160 -96 if entity @p[distance=..48] run function asset:spawner/208/register