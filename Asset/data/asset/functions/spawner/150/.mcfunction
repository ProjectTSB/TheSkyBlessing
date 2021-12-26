#> asset:spawner/150/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:25,Y:48,Z:25}] in overworld positioned 25 48 231 if entity @p[distance=..48] run function asset:spawner/150/register