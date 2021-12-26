#> asset:spawner/049/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:42,Y:26,Z:42}] in overworld positioned 42 26 57 if entity @p[distance=..40] run function asset:spawner/049/register