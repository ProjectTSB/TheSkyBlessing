#> asset:spawner/010/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-97,Y:33,Z:23}] in overworld positioned -97 33 23 if entity @p[distance=..40] run function asset:spawner/010/register