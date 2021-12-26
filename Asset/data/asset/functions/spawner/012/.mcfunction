#> asset:spawner/012/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-95,Y:15,Z:25}] in overworld positioned -95 15 25 if entity @p[distance=..40] run function asset:spawner/012/register