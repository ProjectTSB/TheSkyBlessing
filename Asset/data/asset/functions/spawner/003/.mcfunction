#> asset:spawner/003/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-18,Y:21,Z:-37}] in overworld positioned -18 21 -37 if entity @p[distance=..40] run function asset:spawner/003/register