#> asset:spawner/172/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-90,Y:33,Z:-90}] in overworld positioned -90 33 265 if entity @p[distance=..40] run function asset:spawner/172/register