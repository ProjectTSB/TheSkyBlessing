#> asset:spawner/256/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-189,Y:90,Z:20}] in overworld positioned -189 90 20 if entity @p[distance=..40] run function asset:spawner/256/register