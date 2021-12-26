#> asset:spawner/200/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:226,Y:149,Z:226}] in overworld positioned 226 149 -92 if entity @p[distance=..48] run function asset:spawner/200/register