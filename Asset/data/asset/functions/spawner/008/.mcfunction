#> asset:spawner/008/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-32,Y:16,Z:42}] in overworld positioned -32 16 42 if entity @p[distance=..40] run function asset:spawner/008/register