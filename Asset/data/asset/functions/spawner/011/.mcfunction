#> asset:spawner/011/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-93,Y:30,Z:37}] in overworld positioned -93 30 37 if entity @p[distance=..40] run function asset:spawner/011/register