#> asset:spawner/280/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-180,Y:201,Z:3}] in overworld positioned -180 201 3 if entity @p[distance=..40] run function asset:spawner/280/register