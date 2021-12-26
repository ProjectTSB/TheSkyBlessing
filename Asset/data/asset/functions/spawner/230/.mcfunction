#> asset:spawner/230/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:40,Y:160,Z:40}] in overworld positioned 40 160 -159 if entity @p[distance=..48] run function asset:spawner/230/register