#> asset:spawner/070/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:168,Y:8,Z:123}] in overworld positioned 168 8 123 if entity @p[distance=..40] run function asset:spawner/070/register