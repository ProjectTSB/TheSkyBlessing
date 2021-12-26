#> asset:spawner/234/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-40,Y:95,Z:-107}] in overworld positioned -40 95 -107 if entity @p[distance=..40] run function asset:spawner/234/register