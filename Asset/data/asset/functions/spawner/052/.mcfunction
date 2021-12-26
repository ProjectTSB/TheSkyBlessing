#> asset:spawner/052/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-16,Y:42,Z:-16}] in overworld positioned -16 42 113 if entity @p[distance=..48] run function asset:spawner/052/register