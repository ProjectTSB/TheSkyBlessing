#> asset:spawner/569/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:404,Y:116,Z:64}] in overworld positioned 404 116 64 if entity @p[distance=..40] run function asset:spawner/569/register