#> asset:spawner/200/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:90,Y:185,Z:-113}] in overworld positioned 90 185 -113 if entity @p[distance=..40] run function asset:spawner/200/register