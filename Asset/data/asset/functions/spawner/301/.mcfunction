#> asset:spawner/301/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:416,Y:42,Z:270}] in overworld positioned 416 42 270 if entity @p[distance=..40] run function asset:spawner/301/register