#> asset:spawner/123/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:206,Y:27,Z:232}] in overworld positioned 206 27 232 if entity @p[distance=..40] run function asset:spawner/123/register