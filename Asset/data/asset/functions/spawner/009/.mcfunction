#> asset:spawner/009/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-49,Y:22,Z:70}] in overworld positioned -49 22 70 if entity @p[distance=..40] run function asset:spawner/009/register