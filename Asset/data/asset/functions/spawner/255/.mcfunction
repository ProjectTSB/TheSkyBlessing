#> asset:spawner/255/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-32,Y:95,Z:-32}] in overworld positioned -32 95 -147 if entity @p[distance=..48] run function asset:spawner/255/register