#> asset:spawner/228/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-32,Y:95,Z:-127}] in overworld positioned -32 95 -127 if entity @p[distance=..40] run function asset:spawner/228/register