#> asset:spawner/007/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-31,Y:6,Z:42}] in overworld positioned -31 6 42 if entity @p[distance=..40] run function asset:spawner/007/register