#> asset:spawner/002/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:21,Y:15,Z:-14}] in overworld positioned 21 15 -14 if entity @p[distance=..40] run function asset:spawner/002/register