#> asset:spawner/150/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:34,Y:81,Z:264}] in overworld positioned 34 81 264 if entity @p[distance=..40] run function asset:spawner/150/register