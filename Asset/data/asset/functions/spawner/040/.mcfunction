#> asset:spawner/040/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:108,Y:23,Z:108}] in overworld positioned 108 23 28 if entity @p[distance=..40] run function asset:spawner/040/register