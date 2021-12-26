#> asset:spawner/048/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:89,Y:15,Z:7}] in overworld positioned 89 15 7 if entity @p[distance=..40] run function asset:spawner/048/register