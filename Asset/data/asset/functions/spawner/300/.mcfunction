#> asset:spawner/300/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-185,Y:175,Z:-185}] in overworld positioned -185 175 11 if entity @p[distance=..48] run function asset:spawner/300/register