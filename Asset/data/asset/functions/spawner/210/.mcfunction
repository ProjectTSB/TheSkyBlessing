#> asset:spawner/210/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:116,Y:170,Z:116}] in overworld positioned 116 170 -116 if entity @p[distance=..48] run function asset:spawner/210/register