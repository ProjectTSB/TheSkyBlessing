#> asset:spawner/055/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-16,Y:42,Z:113}] in overworld positioned -16 42 113 if entity @p[distance=..40] run function asset:spawner/055/register