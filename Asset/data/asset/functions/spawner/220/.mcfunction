#> asset:spawner/220/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-60,Y:183,Z:-174}] in overworld positioned -60 183 -174 if entity @p[distance=..40] run function asset:spawner/220/register